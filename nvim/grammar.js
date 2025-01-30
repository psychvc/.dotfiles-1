/**
 * @file Sitter grammar for tree-sitter
 * @author psychvc <chatpong.dvm@gmail.com>
 * @license MIT
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "sitter",

  rules: {
    // TODO: add the actual grammar rules
    source_file: $ => "hello"
  }
});
