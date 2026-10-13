.class public Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;
.super Landroid/os/Handler;
.source "FunnelLoggerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/funnellogger/core/FunnelLoggerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FunnelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/funnellogger/core/FunnelLoggerImpl;


# direct methods
.method public constructor <init>(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;->this$0:Lcom/facebook/funnellogger/core/FunnelLoggerImpl;

    .line 511
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 512
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    .line 517
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/funnellogger/core/OperationParams;

    .line 520
    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;->this$0:Lcom/facebook/funnellogger/core/FunnelLoggerImpl;

    .line 521
    invoke-static {v0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->getKey(Lcom/facebook/funnellogger/core/OperationParams;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/funnellogger/core/OperationParams;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    iget-object v4, v0, Lcom/facebook/funnellogger/core/OperationParams;->mInstanceId:Ljava/lang/Long;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;->this$0:Lcom/facebook/funnellogger/core/FunnelLoggerImpl;

    .line 523
    invoke-static {v4}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->access$000(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;)Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    :goto_0
    iget-object v0, v0, Lcom/facebook/funnellogger/core/OperationParams;->mTimestamp:Ljava/lang/Long;

    .line 524
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 520
    invoke-static/range {v1 .. v7}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->access$100(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;Lcom/facebook/funnellogger/core/FunnelDefinition;JJ)V

    .line 566
    :goto_1
    return-void

    .line 523
    :cond_0
    iget-object v4, v0, Lcom/facebook/funnellogger/core/OperationParams;->mInstanceId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    .line 527
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/funnellogger/core/OperationParams;

    .line 528
    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;->this$0:Lcom/facebook/funnellogger/core/FunnelLoggerImpl;

    invoke-static {v0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->getKey(Lcom/facebook/funnellogger/core/OperationParams;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/funnellogger/core/OperationParams;->mFunnelTag:Ljava/lang/String;

    iget-object v0, v0, Lcom/facebook/funnellogger/core/OperationParams;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->access$200(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 531
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/funnellogger/core/OperationParams;

    .line 532
    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;->this$0:Lcom/facebook/funnellogger/core/FunnelLoggerImpl;

    .line 533
    invoke-static {v0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->getKey(Lcom/facebook/funnellogger/core/OperationParams;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/funnellogger/core/OperationParams;->mActionName:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/funnellogger/core/OperationParams;->mActionTag:Ljava/lang/String;

    iget-object v5, v0, Lcom/facebook/funnellogger/core/OperationParams;->mActionPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    iget-object v0, v0, Lcom/facebook/funnellogger/core/OperationParams;->mTimestamp:Ljava/lang/Long;

    .line 537
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 532
    invoke-static/range {v1 .. v7}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->access$300(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/funnellogger/core/PayloadBundle;J)V

    goto :goto_1

    .line 540
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/funnellogger/core/OperationParams;

    .line 541
    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;->this$0:Lcom/facebook/funnellogger/core/FunnelLoggerImpl;

    invoke-static {v0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->getKey(Lcom/facebook/funnellogger/core/OperationParams;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->access$400(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 544
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/funnellogger/core/OperationParams;

    .line 545
    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;->this$0:Lcom/facebook/funnellogger/core/FunnelLoggerImpl;

    invoke-static {v0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->getKey(Lcom/facebook/funnellogger/core/OperationParams;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/facebook/funnellogger/core/OperationParams;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->access$500(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;J)V

    goto :goto_1

    .line 548
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;->this$0:Lcom/facebook/funnellogger/core/FunnelLoggerImpl;

    invoke-static {v0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->access$600(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;)V

    goto :goto_1

    .line 551
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/funnellogger/core/OperationParams;

    .line 552
    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;->this$0:Lcom/facebook/funnellogger/core/FunnelLoggerImpl;

    .line 553
    invoke-static {v0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->getKey(Lcom/facebook/funnellogger/core/OperationParams;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/funnellogger/core/OperationParams;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    iget-object v4, v0, Lcom/facebook/funnellogger/core/OperationParams;->mInstanceId:Ljava/lang/Long;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;->this$0:Lcom/facebook/funnellogger/core/FunnelLoggerImpl;

    .line 555
    invoke-static {v4}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->access$000(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;)Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    :goto_2
    iget-object v0, v0, Lcom/facebook/funnellogger/core/OperationParams;->mTimestamp:Ljava/lang/Long;

    .line 556
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 552
    invoke-static/range {v1 .. v7}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->access$700(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;Lcom/facebook/funnellogger/core/FunnelDefinition;JJ)V

    goto/16 :goto_1

    .line 555
    :cond_1
    iget-object v4, v0, Lcom/facebook/funnellogger/core/OperationParams;->mInstanceId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    .line 559
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/facebook/funnellogger/core/OperationParams;

    .line 560
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;->this$0:Lcom/facebook/funnellogger/core/FunnelLoggerImpl;

    .line 561
    invoke-static {v4}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->getKey(Lcom/facebook/funnellogger/core/OperationParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v4, Lcom/facebook/funnellogger/core/OperationParams;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    iget-object v3, v4, Lcom/facebook/funnellogger/core/OperationParams;->mFunnelPayload:Lcom/facebook/funnellogger/core/PayloadBundle;

    iget-object v4, v4, Lcom/facebook/funnellogger/core/OperationParams;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 560
    invoke-static/range {v0 .. v5}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->access$800(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;Lcom/facebook/funnellogger/core/FunnelDefinition;Lcom/facebook/funnellogger/core/PayloadBundle;J)V

    goto/16 :goto_1

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
