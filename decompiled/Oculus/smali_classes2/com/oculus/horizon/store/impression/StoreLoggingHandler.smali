.class public Lcom/oculus/horizon/store/impression/StoreLoggingHandler;
.super Landroid/os/Handler;
.source "StoreLoggingHandler.java"


# instance fields
.field private final mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

.field private final mSurfaceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;Lcom/oculus/horizon/logging/OculusLogger;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    iput-object p1, p0, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;->mSurfaceName:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 34
    return-void
.end method

.method private doLogVPV(Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/store/StoreSection;I)V
    .locals 12

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;->mSurfaceName:Ljava/lang/String;

    iget-object v2, p2, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/horizon/store/StoreSection;->name:Ljava/lang/String;

    iget v4, p2, Lcom/oculus/horizon/store/StoreSection;->positionInStore:I

    instance-of v5, p1, Lcom/oculus/horizon/store/StoreApplicationModel;

    if-eqz v5, :cond_0

    move-object v5, p1

    check-cast v5, Lcom/oculus/horizon/store/StoreApplicationModel;

    iget-object v5, v5, Lcom/oculus/horizon/store/StoreApplicationModel;->packageName:Ljava/lang/String;

    :goto_0
    iget-object v6, p1, Lcom/oculus/horizon/store/StoreItemModel;->name:Ljava/lang/String;

    iget-object v7, p1, Lcom/oculus/horizon/store/StoreItemModel;->categoryId:Ljava/lang/String;

    iget-object v8, p1, Lcom/oculus/horizon/store/StoreItemModel;->categoryName:Ljava/lang/String;

    iget-object v9, p1, Lcom/oculus/horizon/store/StoreItemModel;->price:Ljava/lang/String;

    instance-of v10, p1, Lcom/oculus/horizon/store/StoreApplicationModel;

    if-eqz v10, :cond_1

    check-cast p1, Lcom/oculus/horizon/store/StoreApplicationModel;

    iget-boolean v10, p1, Lcom/oculus/horizon/store/StoreApplicationModel;->isOwnedByCurrentUser:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    move v11, p3

    invoke-virtual/range {v0 .. v11}, Lcom/oculus/horizon/logging/OculusLogger;->reportStoreCardImpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 72
    return-void

    .line 57
    :cond_0
    iget-object v5, p1, Lcom/oculus/horizon/store/StoreItemModel;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private doLogVPVD(Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/store/StoreSection;II)V
    .locals 13

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;->mSurfaceName:Ljava/lang/String;

    iget-object v2, p2, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/horizon/store/StoreSection;->name:Ljava/lang/String;

    iget v4, p2, Lcom/oculus/horizon/store/StoreSection;->positionInStore:I

    instance-of v5, p1, Lcom/oculus/horizon/store/StoreApplicationModel;

    if-eqz v5, :cond_0

    move-object v5, p1

    check-cast v5, Lcom/oculus/horizon/store/StoreApplicationModel;

    iget-object v5, v5, Lcom/oculus/horizon/store/StoreApplicationModel;->packageName:Ljava/lang/String;

    :goto_0
    iget-object v6, p1, Lcom/oculus/horizon/store/StoreItemModel;->name:Ljava/lang/String;

    iget-object v7, p1, Lcom/oculus/horizon/store/StoreItemModel;->categoryId:Ljava/lang/String;

    iget-object v8, p1, Lcom/oculus/horizon/store/StoreItemModel;->categoryName:Ljava/lang/String;

    iget-object v9, p1, Lcom/oculus/horizon/store/StoreItemModel;->price:Ljava/lang/String;

    instance-of v10, p1, Lcom/oculus/horizon/store/StoreApplicationModel;

    if-eqz v10, :cond_1

    check-cast p1, Lcom/oculus/horizon/store/StoreApplicationModel;

    iget-boolean v10, p1, Lcom/oculus/horizon/store/StoreApplicationModel;->isOwnedByCurrentUser:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v0 .. v12}, Lcom/oculus/horizon/logging/OculusLogger;->reportStoreCardImpressionDuration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 96
    return-void

    .line 80
    :cond_0
    iget-object v5, p1, Lcom/oculus/horizon/store/StoreItemModel;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 42
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/oculus/horizon/store/StoreItemModel;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/store/StoreSection;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, v0, v2}, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;->doLogVPV(Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/store/StoreSection;I)V

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 48
    if-eqz v0, :cond_0

    .line 49
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/oculus/horizon/store/StoreItemModel;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/store/StoreSection;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;->doLogVPVD(Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/store/StoreSection;II)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendVPVDurationLog(Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/store/StoreSection;II)V
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x2

    .line 124
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {p0, v0, p3, p4, v1}, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    return-void
.end method
