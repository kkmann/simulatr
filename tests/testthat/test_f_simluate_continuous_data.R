
test_that("For invalid input arguments 'getSimulatedTwoArmMeans' throws meaningful exceptions", { # nolint
    expect_error(
        getSimulatedTwoArmMeans(),
        'argument "n1" is missing, with no default'
    )

    # TODO implement tests for all arguments
})

test_that("With defined seed 'getSimulatedTwoArmMeans' returns reproducible results", { # nolint
    # TODO implement tests
})

test_that("With undefined seed 'getSimulatedTwoArmMeans' returns valid results", { # nolint
    # TODO implement tests
})

test_that("'getSimulatedTwoArmMeans' result can be printed", {
    # TODO implement tests
})
