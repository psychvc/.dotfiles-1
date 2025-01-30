package tree_sitter_sitter_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_sitter "github.com/tree-sitter/tree-sitter-sitter/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_sitter.Language())
	if language == nil {
		t.Errorf("Error loading Sitter grammar")
	}
}
