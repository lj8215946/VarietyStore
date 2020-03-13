package com.varietystore;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class VarietyStoreTest {

    @Test
    public void foo() {
        Item[] items = new Item[] { new Item("foo", 0, 0) };
        VarietyStore app = new VarietyStore(items);
        app.updateItems();
        assertEquals("fixme", app.items[0].name);
    }

}
