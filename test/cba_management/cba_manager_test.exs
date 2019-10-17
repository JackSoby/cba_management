defmodule CbaManagement.CbaManagerTest do
  use CbaManagement.DataCase

  alias CbaManagement.CbaManager

  describe "district" do
    alias CbaManagement.CbaManager.District

    @valid_attrs %{name: "some name", phone_number: "some phone_number", zip_code: "some zip_code"}
    @update_attrs %{name: "some updated name", phone_number: "some updated phone_number", zip_code: "some updated zip_code"}
    @invalid_attrs %{name: nil, phone_number: nil, zip_code: nil}

    def district_fixture(attrs \\ %{}) do
      {:ok, district} =
        attrs
        |> Enum.into(@valid_attrs)
        |> CbaManager.create_district()

      district
    end

    test "list_district/0 returns all district" do
      district = district_fixture()
      assert CbaManager.list_district() == [district]
    end

    test "get_district!/1 returns the district with given id" do
      district = district_fixture()
      assert CbaManager.get_district!(district.id) == district
    end

    test "create_district/1 with valid data creates a district" do
      assert {:ok, %District{} = district} = CbaManager.create_district(@valid_attrs)
      assert district.name == "some name"
      assert district.phone_number == "some phone_number"
      assert district.zip_code == "some zip_code"
    end

    test "create_district/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = CbaManager.create_district(@invalid_attrs)
    end

    test "update_district/2 with valid data updates the district" do
      district = district_fixture()
      assert {:ok, %District{} = district} = CbaManager.update_district(district, @update_attrs)
      assert district.name == "some updated name"
      assert district.phone_number == "some updated phone_number"
      assert district.zip_code == "some updated zip_code"
    end

    test "update_district/2 with invalid data returns error changeset" do
      district = district_fixture()
      assert {:error, %Ecto.Changeset{}} = CbaManager.update_district(district, @invalid_attrs)
      assert district == CbaManager.get_district!(district.id)
    end

    test "delete_district/1 deletes the district" do
      district = district_fixture()
      assert {:ok, %District{}} = CbaManager.delete_district(district)
      assert_raise Ecto.NoResultsError, fn -> CbaManager.get_district!(district.id) end
    end

    test "change_district/1 returns a district changeset" do
      district = district_fixture()
      assert %Ecto.Changeset{} = CbaManager.change_district(district)
    end
  end

  describe "agreement" do
    alias CbaManagement.CbaManager.Agreement

    @valid_attrs %{name: "some name", year: "some year"}
    @update_attrs %{name: "some updated name", year: "some updated year"}
    @invalid_attrs %{name: nil, year: nil}

    def agreement_fixture(attrs \\ %{}) do
      {:ok, agreement} =
        attrs
        |> Enum.into(@valid_attrs)
        |> CbaManager.create_agreement()

      agreement
    end

    test "list_agreement/0 returns all agreement" do
      agreement = agreement_fixture()
      assert CbaManager.list_agreement() == [agreement]
    end

    test "get_agreement!/1 returns the agreement with given id" do
      agreement = agreement_fixture()
      assert CbaManager.get_agreement!(agreement.id) == agreement
    end

    test "create_agreement/1 with valid data creates a agreement" do
      assert {:ok, %Agreement{} = agreement} = CbaManager.create_agreement(@valid_attrs)
      assert agreement.name == "some name"
      assert agreement.year == "some year"
    end

    test "create_agreement/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = CbaManager.create_agreement(@invalid_attrs)
    end

    test "update_agreement/2 with valid data updates the agreement" do
      agreement = agreement_fixture()
      assert {:ok, %Agreement{} = agreement} = CbaManager.update_agreement(agreement, @update_attrs)
      assert agreement.name == "some updated name"
      assert agreement.year == "some updated year"
    end

    test "update_agreement/2 with invalid data returns error changeset" do
      agreement = agreement_fixture()
      assert {:error, %Ecto.Changeset{}} = CbaManager.update_agreement(agreement, @invalid_attrs)
      assert agreement == CbaManager.get_agreement!(agreement.id)
    end

    test "delete_agreement/1 deletes the agreement" do
      agreement = agreement_fixture()
      assert {:ok, %Agreement{}} = CbaManager.delete_agreement(agreement)
      assert_raise Ecto.NoResultsError, fn -> CbaManager.get_agreement!(agreement.id) end
    end

    test "change_agreement/1 returns a agreement changeset" do
      agreement = agreement_fixture()
      assert %Ecto.Changeset{} = CbaManager.change_agreement(agreement)
    end
  end

  describe "years" do
    alias CbaManagement.CbaManager.Year

    @valid_attrs %{amount: "some amount", number_of_years: "some number_of_years"}
    @update_attrs %{amount: "some updated amount", number_of_years: "some updated number_of_years"}
    @invalid_attrs %{amount: nil, number_of_years: nil}

    def year_fixture(attrs \\ %{}) do
      {:ok, year} =
        attrs
        |> Enum.into(@valid_attrs)
        |> CbaManager.create_year()

      year
    end

    test "list_years/0 returns all years" do
      year = year_fixture()
      assert CbaManager.list_years() == [year]
    end

    test "get_year!/1 returns the year with given id" do
      year = year_fixture()
      assert CbaManager.get_year!(year.id) == year
    end

    test "create_year/1 with valid data creates a year" do
      assert {:ok, %Year{} = year} = CbaManager.create_year(@valid_attrs)
      assert year.amount == "some amount"
      assert year.number_of_years == "some number_of_years"
    end

    test "create_year/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = CbaManager.create_year(@invalid_attrs)
    end

    test "update_year/2 with valid data updates the year" do
      year = year_fixture()
      assert {:ok, %Year{} = year} = CbaManager.update_year(year, @update_attrs)
      assert year.amount == "some updated amount"
      assert year.number_of_years == "some updated number_of_years"
    end

    test "update_year/2 with invalid data returns error changeset" do
      year = year_fixture()
      assert {:error, %Ecto.Changeset{}} = CbaManager.update_year(year, @invalid_attrs)
      assert year == CbaManager.get_year!(year.id)
    end

    test "delete_year/1 deletes the year" do
      year = year_fixture()
      assert {:ok, %Year{}} = CbaManager.delete_year(year)
      assert_raise Ecto.NoResultsError, fn -> CbaManager.get_year!(year.id) end
    end

    test "change_year/1 returns a year changeset" do
      year = year_fixture()
      assert %Ecto.Changeset{} = CbaManager.change_year(year)
    end
  end
end
