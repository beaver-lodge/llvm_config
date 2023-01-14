defmodule LLVMConfigTest do
  use ExUnit.Case
  doctest LLVMConfig

  test "find include" do
    assert LLVMConfig.include_dir()
  end

  test "find lib" do
    assert LLVMConfig.lib_dir()
  end
end
