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
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
