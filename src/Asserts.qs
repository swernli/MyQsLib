@Config(Unrestricted)
import Std.Diagnostics.Fact, Std.Diagnostics.CheckOperationsAreEqual, Std.Diagnostics.CheckZero;

@Config(Unrestricted)
export AssertOperationsAreEqual, AssertQubitIsZero;

@Config(Unrestricted)
operation AssertOperationsAreEqual(
    nQubits : Int,
    actual : (Qubit[] => Unit),
    expected : (Qubit[] => Unit is Adj)
) : Unit {
    Fact(CheckOperationsAreEqual(nQubits, actual, expected), "Operations are not equal!");
}

@Config(Unrestricted)
operation AssertQubitIsZero(q : Qubit) : Unit {
    Fact(CheckZero(q), "Qubit is not in the |0⟩ state!");
}
