.class final Lcom/oculus/vrapilayers/AutoDriver$1;
.super Ljava/lang/Thread;
.source "AutoDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrapilayers/AutoDriver;->StartLayer(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 63
    invoke-static {}, Lcom/oculus/vrapilayers/AutoDriver;->updateDataLoop()V

    return-void
.end method
