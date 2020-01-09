labbcat.url <- "https://labbcat.canterbury.ac.nz/demo"
labbcatCredentials(labbcat.url, "demo", "demo")

test_that("getLayer works for orthography", {
    layers <- getLayer(labbcat.url, "orthography")
    
    expect_equal(layers$id, "orthography")
    expect_equal(layers$description, "Standard Orthography")
    expect_equal(layers$parentId, "transcript")
    expect_equal(layers$type, "string")
    expect_equal(layers$alignment, 0)
    expect_false(layers$peers)
    expect_false(layers$peersOverlap)
    expect_false(layers$saturated) # TODO should be true, needs fixing on backend
    expect_false(layers$parentIncludes) # TODO should be true, needs fixing on backend
})