defmodule CbaManagement.CbaManager do
  @moduledoc """
  The CbaManager context.
  """

  import Ecto.Query, warn: false
  alias CbaManagement.Repo

  alias CbaManagement.CbaManager.Schemas.District

  @doc """
  Returns the list of district.

  ## Examples

      iex> list_district()
      [%District{}, ...]

  """
  def list_district do
    Repo.all(District)
  end

  @doc """
  Gets a single district.

  Raises `Ecto.NoResultsError` if the District does not exist.

  ## Examples

      iex> get_district!(123)
      %District{}

      iex> get_district!(456)
      ** (Ecto.NoResultsError)

  """
  def get_district!(id), do: Repo.get!(District, id)

  @doc """
  Creates a district.

  ## Examples

      iex> create_district(%{field: value})
      {:ok, %District{}}

      iex> create_district(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_district(attrs \\ %{}) do
    %District{}
    |> District.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a district.

  ## Examples

      iex> update_district(district, %{field: new_value})
      {:ok, %District{}}

      iex> update_district(district, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_district(%District{} = district, attrs) do
    district
    |> District.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a District.

  ## Examples

      iex> delete_district(district)
      {:ok, %District{}}

      iex> delete_district(district)
      {:error, %Ecto.Changeset{}}

  """
  def delete_district(%District{} = district) do
    Repo.delete(district)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking district changes.

  ## Examples

      iex> change_district(district)
      %Ecto.Changeset{source: %District{}}

  """
  def change_district(%District{} = district) do
    District.changeset(district, %{})
  end

  alias CbaManagement.CbaManager.Schemas.Agreement

  @doc """
  Returns the list of agreement.

  ## Examples

      iex> list_agreement()
      [%Agreement{}, ...]

  """
  def list_agreement do
    Repo.all(Agreement)
  end

  @doc """
  Gets a single agreement.

  Raises `Ecto.NoResultsError` if the Agreement does not exist.

  ## Examples

      iex> get_agreement!(123)
      %Agreement{}

      iex> get_agreement!(456)
      ** (Ecto.NoResultsError)

  """
  def get_agreement!(id), do: Repo.get!(Agreement, id)

  @doc """
  Creates a agreement.

  ## Examples

      iex> create_agreement(%{field: value})
      {:ok, %Agreement{}}

      iex> create_agreement(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_agreement(attrs \\ %{}) do
    %Agreement{}
    |> Agreement.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a agreement.

  ## Examples

      iex> update_agreement(agreement, %{field: new_value})
      {:ok, %Agreement{}}

      iex> update_agreement(agreement, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_agreement(%Agreement{} = agreement, attrs) do
    agreement
    |> Agreement.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Agreement.

  ## Examples

      iex> delete_agreement(agreement)
      {:ok, %Agreement{}}

      iex> delete_agreement(agreement)
      {:error, %Ecto.Changeset{}}

  """
  def delete_agreement(%Agreement{} = agreement) do
    Repo.delete(agreement)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking agreement changes.

  ## Examples

      iex> change_agreement(agreement)
      %Ecto.Changeset{source: %Agreement{}}

  """
  def change_agreement(%Agreement{} = agreement) do
    Agreement.changeset(agreement, %{})
  end
end