defmodule BlinkTrade do
  @moduledoc """
  Documentation for BlinkTrade.
  """

  use HTTPoison.Base

  @allowed_currencies ["vef", "vnd", "brl", "pkr", "clp"]
  @base_url "https://api.blinktrade.com/api/v1"

  @doc """
  Ticker the Bitcoin value per `currency`

  Returns `HTTPoison.Response`

  ## Parameters
    - currency: Atom that represents the currency, options [:vef, :vnd, :brl, :pkr, :clp]

  ## Examples

    iex> BlinkTrade.ticker(:brl)
    HTTPoison.Response

  """
  def ticker(currency) do
    cur    = Atom.to_string(currency)
    u_cur  = String.upcase(cur)
    member = Enum.member?(@allowed_currencies, cur)

    if not member, do: raise ArgumentError, "Currency not found in [#{Enum.join(@allowed_currencies, ", ")}]"

    get "#{@base_url}/#{u_cur}/ticker"
  end
end
