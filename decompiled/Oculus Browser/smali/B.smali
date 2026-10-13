.class public abstract LB;
.super Landroid/os/Binder;
.source "PG"

# interfaces
.implements LC;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.support.customtabs.ICustomTabsService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const v3, 0x5f4e5446

    const/4 v4, 0x1

    const-string v5, "android.support.customtabs.ICustomTabsService"

    if-eq v0, v3, :cond_2c

    const/4 v3, 0x0

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2
    :pswitch_0
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lz;->a(Landroid/os/IBinder;)LA;

    move-result-object v0

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object v5, v6

    .line 6
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 8
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    move-object v1, v6

    .line 9
    :goto_1
    move-object/from16 v8, p0

    check-cast v8, LFi;

    .line 10
    iget-object v9, v8, LFi;->a:LGi;

    new-instance v10, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 11
    invoke-virtual {v8, v1}, LFi;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(LA;Landroid/app/PendingIntent;)V

    .line 12
    check-cast v9, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;

    .line 13
    iget-object v0, v9, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->y:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    if-eqz v0, :cond_b

    .line 14
    invoke-static {}, LKY;->c()LR60;

    move-result-object v0

    check-cast v0, LY60;

    invoke-virtual {v0}, LY60;->f()Lv60;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v0, "CustomTabFiles"

    if-nez v5, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "Received a null uri"

    .line 15
    invoke-static {v0, v5, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    if-eq v7, v4, :cond_3

    const-string v1, "Unknown FilePurpose "

    .line 16
    invoke-static {v1, v7}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 17
    :cond_3
    iget-object v0, v1, Lv60;->a:Landroid/content/Context;

    const-string v7, "FileUtils"

    .line 18
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "r"

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_4

    .line 19
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Null ParcelFileDescriptor from uri "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v9}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v8, :cond_8

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-nez v0, :cond_5

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Null FileDescriptor from uri "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v9}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 22
    :cond_5
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to decode image from uri "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v9}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :goto_2
    :try_start_2
    invoke-static {v6, v8}, LFT;->a(Ljava/lang/Throwable;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_3

    :cond_6
    invoke-static {v6, v8}, LFT;->a(Ljava/lang/Throwable;Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v9, v0

    .line 25
    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v11, v0

    if-eqz v8, :cond_7

    .line 26
    :try_start_4
    invoke-static {v9, v8}, LFT;->a(Ljava/lang/Throwable;Landroid/os/ParcelFileDescriptor;)V

    :cond_7
    throw v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 27
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO exception when reading uri "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v5}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_3
    move-object v0, v6

    :goto_4
    if-nez v0, :cond_9

    goto :goto_5

    .line 28
    :cond_9
    iget-object v3, v1, Lv60;->b:LXR;

    check-cast v3, LYR;

    invoke-virtual {v3}, LYR;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LC20;

    .line 29
    iget-object v3, v3, LC20;->a:Ljava/util/Map;

    invoke-interface {v3, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iput-boolean v4, v1, Lv60;->c:Z

    const/4 v3, 0x1

    .line 31
    :goto_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    .line 33
    :cond_a
    throw v6

    .line 34
    :cond_b
    throw v6

    .line 35
    :pswitch_1
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lz;->a(Landroid/os/IBinder;)LA;

    move-result-object v0

    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 38
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    goto :goto_6

    :cond_c
    move-object v3, v6

    .line 39
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 40
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/os/Bundle;

    .line 41
    :cond_d
    move-object/from16 v1, p0

    check-cast v1, LFi;

    .line 42
    iget-object v5, v1, LFi;->a:LGi;

    new-instance v7, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 43
    invoke-virtual {v1, v6}, LFi;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(LA;Landroid/app/PendingIntent;)V

    .line 44
    invoke-virtual {v5, v7, v3}, LGi;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)Z

    move-result v0

    .line 45
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    .line 47
    :pswitch_2
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lz;->a(Landroid/os/IBinder;)LA;

    move-result-object v0

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 50
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/os/Bundle;

    .line 51
    :cond_e
    move-object/from16 v1, p0

    check-cast v1, LFi;

    .line 52
    invoke-virtual {v1, v6}, LFi;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, LFi;->a(LA;Landroid/app/PendingIntent;)Z

    move-result v0

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    .line 55
    :pswitch_3
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lz;->a(Landroid/os/IBinder;)LA;

    move-result-object v0

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_f

    .line 59
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    goto :goto_7

    :cond_f
    move-object v7, v6

    .line 60
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_10

    .line 61
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_8

    :cond_10
    move-object v1, v6

    .line 62
    :goto_8
    move-object/from16 v8, p0

    check-cast v8, LFi;

    .line 63
    iget-object v9, v8, LFi;->a:LGi;

    new-instance v10, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 64
    invoke-virtual {v8, v1}, LFi;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(LA;Landroid/app/PendingIntent;)V

    .line 65
    check-cast v9, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;

    .line 66
    iget-object v0, v9, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->y:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    new-instance v1, Lh20;

    invoke-direct {v1, v7}, Lh20;-><init>(Landroid/net/Uri;)V

    .line 67
    iget-object v7, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_12

    .line 68
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    invoke-virtual {v0, v10}, Lo60;->d(Landroidx/browser/customtabs/CustomTabsSessionToken;)LBi;

    move-result-object v0

    .line 69
    invoke-virtual {v1}, Lh20;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 70
    check-cast v0, LHi;

    if-eqz v0, :cond_11

    .line 71
    :try_start_5
    iget-object v0, v0, LHi;->a:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsSessionToken;->a:LA;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    check-cast v0, Ly;

    :try_start_6
    invoke-virtual {v0, v5, v1, v3, v6}, Ly;->a(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_9

    :catch_1
    const-string v0, "CustomTabsSessionToken"

    const-string v1, "RemoteException during ICustomTabsCallback transaction"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 73
    :cond_11
    throw v6

    .line 74
    :cond_12
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    invoke-virtual {v0, v10, v5, v1}, Lo60;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;ILh20;)Z

    move-result v3

    .line 75
    :goto_9
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    .line 77
    :pswitch_4
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lz;->a(Landroid/os/IBinder;)LA;

    move-result-object v0

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    .line 81
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_a

    :cond_13
    move-object v1, v6

    .line 82
    :goto_a
    move-object/from16 v5, p0

    check-cast v5, LFi;

    .line 83
    iget-object v7, v5, LFi;->a:LGi;

    new-instance v8, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 84
    invoke-virtual {v5, v1}, LFi;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(LA;Landroid/app/PendingIntent;)V

    .line 85
    check-cast v7, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;

    .line 86
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->a()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, -0x1

    goto :goto_c

    .line 87
    :cond_14
    iget-object v0, v7, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->y:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    .line 88
    iget-object v1, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 89
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->b:Lp20;

    if-eqz v1, :cond_15

    goto :goto_b

    .line 90
    :cond_15
    throw v6

    .line 91
    :cond_16
    :goto_b
    iget-object v1, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    invoke-virtual {v1, v8, v3}, Lo60;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/lang/String;)I

    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "postMessage"

    invoke-virtual {v0, v5, v3}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 93
    :goto_c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    .line 95
    :pswitch_5
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lz;->a(Landroid/os/IBinder;)LA;

    move-result-object v0

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    .line 98
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_d

    :cond_17
    move-object v1, v6

    .line 99
    :goto_d
    move-object/from16 v3, p0

    check-cast v3, LFi;

    .line 100
    iget-object v3, v3, LFi;->a:LGi;

    new-instance v5, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {v5, v0, v6}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(LA;Landroid/app/PendingIntent;)V

    invoke-virtual {v3, v5, v1}, LGi;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)Z

    move-result v0

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    .line 103
    :pswitch_6
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lz;->a(Landroid/os/IBinder;)LA;

    move-result-object v0

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18

    .line 106
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_e

    :cond_18
    move-object v1, v6

    .line 107
    :goto_e
    move-object/from16 v5, p0

    check-cast v5, LFi;

    .line 108
    iget-object v7, v5, LFi;->a:LGi;

    new-instance v8, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 109
    invoke-virtual {v5, v1}, LFi;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v8, v0, v5}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(LA;Landroid/app/PendingIntent;)V

    .line 110
    check-cast v7, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;

    .line 111
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->a()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_f

    .line 112
    :cond_19
    iget-object v0, v7, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->y:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    .line 113
    iget-boolean v5, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->d:Z

    if-eqz v5, :cond_1a

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "ChromeConnection"

    const-string v7, "updateVisuals: %s"

    invoke-static {v1, v7, v5}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :cond_1a
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->b:Lp20;

    if-eqz v0, :cond_1b

    .line 115
    :goto_f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    .line 117
    :cond_1b
    throw v6

    .line 118
    :pswitch_7
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 121
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 122
    :cond_1c
    move-object/from16 v0, p0

    check-cast v0, LFi;

    .line 123
    iget-object v0, v0, LFi;->a:LGi;

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;

    .line 124
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->y:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    if-eqz v0, :cond_1d

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    .line 127
    :cond_1d
    throw v6

    .line 128
    :pswitch_8
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lz;->a(Landroid/os/IBinder;)LA;

    move-result-object v0

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    .line 131
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    goto :goto_10

    :cond_1e
    move-object v5, v6

    .line 132
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1f

    .line 133
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    move-object v14, v7

    goto :goto_11

    :cond_1f
    move-object v14, v6

    .line 134
    :goto_11
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 135
    move-object/from16 v1, p0

    check-cast v1, LFi;

    .line 136
    iget-object v7, v1, LFi;->a:LGi;

    new-instance v11, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 137
    invoke-virtual {v1, v14}, LFi;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(LA;Landroid/app/PendingIntent;)V

    .line 138
    check-cast v7, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;

    .line 139
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->a()Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_17

    .line 140
    :cond_20
    iget-object v0, v7, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->y:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    if-eqz v0, :cond_2a

    const-string v1, "CustomTabsConnection.mayLaunchUrl"

    .line 141
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1

    if-eqz v5, :cond_21

    .line 142
    :try_start_7
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_22

    goto :goto_12

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto/16 :goto_18

    :cond_21
    :goto_12
    if-eqz v15, :cond_22

    const/4 v7, 0x1

    const/4 v10, 0x1

    goto :goto_13

    :cond_22
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 143
    :goto_13
    invoke-virtual {v0, v5}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    goto :goto_14

    :cond_23
    move-object v13, v6

    :goto_14
    if-eqz v5, :cond_24

    if-nez v13, :cond_24

    if-nez v10, :cond_24

    goto :goto_16

    .line 144
    :cond_24
    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Z)Z

    move-result v7

    if-nez v7, :cond_25

    goto :goto_16

    .line 145
    :cond_25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 146
    iget-object v7, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    if-eqz v15, :cond_26

    const/4 v8, 0x1

    goto :goto_15

    :cond_26
    const/4 v8, 0x0

    :goto_15
    invoke-virtual {v7, v11, v12, v13, v8}, Lo60;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;ILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_27

    goto :goto_16

    .line 147
    :cond_27
    sget-object v3, LZ01;->a:LFW;

    new-instance v7, LC60;

    move-object v8, v7

    move-object v9, v0

    invoke-direct/range {v8 .. v15}, LC60;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;ZLandroidx/browser/customtabs/CustomTabsSessionToken;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    const-wide/16 v8, 0x0

    .line 148
    invoke-static {v3, v7, v8, v9}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 v3, 0x1

    .line 149
    :goto_16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mayLaunchUrl("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_28

    .line 150
    invoke-static {v6, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    .line 151
    :cond_28
    :goto_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    .line 153
    :goto_18
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_29

    .line 154
    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_29
    throw v3

    .line 155
    :cond_2a
    throw v6

    .line 156
    :pswitch_9
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lz;->a(Landroid/os/IBinder;)LA;

    move-result-object v0

    .line 158
    move-object/from16 v1, p0

    check-cast v1, LFi;

    .line 159
    invoke-virtual {v1, v0, v6}, LFi;->a(LA;Landroid/app/PendingIntent;)Z

    move-result v0

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    .line 162
    :pswitch_a
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 164
    move-object/from16 v0, p0

    check-cast v0, LFi;

    .line 165
    iget-object v0, v0, LFi;->a:LGi;

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;

    .line 166
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->a()Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_19

    .line 167
    :cond_2b
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->y:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->b()Z

    move-result v3

    .line 168
    :goto_19
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    .line 170
    :cond_2c
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
