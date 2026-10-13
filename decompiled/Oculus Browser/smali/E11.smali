.class public LE11;
.super Landroid/bluetooth/le/ScanCallback;
.source "PG"


# instance fields
.field public final a:LF11;


# direct methods
.method public constructor <init>(LF11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 2
    iput-object p1, p0, LE11;->a:LF11;

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 4
    new-instance v2, LG11;

    invoke-direct {v2, v1}, LG11;-><init>(Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, LE11;->a:LF11;

    check-cast p1, Lq11;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public onScanFailed(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LE11;->a:LF11;

    check-cast v0, Lq11;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Bluetooth"

    const-string v2, "onScanFailed: %d"

    invoke-static {p1, v2, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, v0, Lq11;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    .line 4
    iget-wide v0, p1, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->a:J

    .line 5
    invoke-static {v0, v1, p1}, LJ/N;->Mq3WoOFf(JLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, LE11;->a:LF11;

    check-cast v1, Lq11;

    if-eqz v1, :cond_7

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-array v2, v3, [Ljava/lang/String;

    move-object v13, v2

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 12
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 13
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    invoke-virtual {v6}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v13, v4

    .line 14
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getServiceData()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2

    new-array v2, v3, [Ljava/lang/String;

    new-array v4, v3, [[B

    move-object v15, v2

    move-object/from16 v16, v4

    goto :goto_3

    .line 15
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 16
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [[B

    .line 17
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    add-int/lit8 v8, v6, 0x1

    .line 19
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    aput-object v7, v5, v6

    move v6, v8

    goto :goto_2

    :cond_3
    move-object v15, v4

    move-object/from16 v16, v5

    .line 20
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v2

    if-nez v2, :cond_4

    new-array v2, v3, [I

    new-array v3, v3, [[B

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_5

    .line 21
    :cond_4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 22
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [[B

    .line 23
    :goto_4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 24
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v4, v3

    .line 25
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 26
    :goto_5
    iget-object v8, v1, Lq11;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    .line 27
    iget-wide v6, v8, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->a:J

    const-wide/16 v1, 0x0

    cmp-long v3, v6, v1

    if-eqz v3, :cond_6

    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 30
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 32
    new-instance v10, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {v10, v1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 33
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v12

    .line 35
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getTxPowerLevel()I

    move-result v14

    .line 36
    invoke-static/range {v6 .. v18}, LJ/N;->MOuw3NGo(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_6
    return-void

    :cond_7
    const/4 v1, 0x0

    .line 37
    throw v1
.end method
