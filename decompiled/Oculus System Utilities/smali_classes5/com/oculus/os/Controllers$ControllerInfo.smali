.class public Lcom/oculus/os/Controllers$ControllerInfo;
.super Ljava/lang/Object;
.source "Controllers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/os/Controllers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerInfo"
.end annotation


# instance fields
.field public status:Lcom/oculus/os/Controllers$ControllerStatus;


# direct methods
.method public constructor <init>(Lcom/oculus/os/Controllers$ControllerStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/oculus/os/Controllers$ControllerStatus;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
