.class public Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
.super Ljava/lang/Object;
.source "OVRServiceSynchronous.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/platform/OVRServiceSynchronous;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBindResult"
.end annotation


# instance fields
.field mBindError:Lcom/oculus/platform/util/OVRError;

.field mMessenger:Landroid/os/Messenger;

.field mServiceInterface:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/platform/OVRServiceSynchronous;


# direct methods
.method public constructor <init>(Lcom/oculus/platform/OVRServiceSynchronous;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/oculus/platform/util/OVRError;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/platform/util/OVRError;",
            ")",
            "Lcom/oculus/platform/OVRServiceSynchronous",
            "<TT;>.ServiceBindResult;"
        }
    .end annotation

    .prologue
    .line 278
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    .line 279
    return-object p0
.end method

.method public success(Landroid/os/IInterface;Landroid/os/Messenger;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Messenger;",
            ")",
            "Lcom/oculus/platform/OVRServiceSynchronous",
            "<TT;>.ServiceBindResult;"
        }
    .end annotation

    .prologue
    .line 272
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    .line 273
    iput-object p2, p0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mMessenger:Landroid/os/Messenger;

    .line 274
    return-object p0
.end method
