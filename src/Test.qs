/// Run the unit tests for the project.
@EntryPoint()
operation RunUnitTests() : Unit {
    Message("Running unit tests...");

    Message("Testing AssertQubitIsZero...");
    {
        use q = Qubit();
        Asserts.AssertQubitIsZero(q);
    }
    Message("Finished testing AssertQubitIsZero.");

    Message("Testing AssertOperationsAreEqual...");
    Asserts.AssertOperationsAreEqual(
        2,
        qs => SWAP(qs[0], qs[1]),
        qs => within { CNOT(qs[0], qs[1]); } apply { CNOT(qs[1], qs[0]); }
    );
    Message("Finished testing AssertOperationsAreEqual.");
}
