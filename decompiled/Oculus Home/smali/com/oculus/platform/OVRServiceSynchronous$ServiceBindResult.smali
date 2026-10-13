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
.field mBindError:Z

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
    .param p1, "this$0"    # Lcom/oculus/platform/OVRServiceSynchronous;

    .prologue
    .line 239
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>.ServiceBindResult;"
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oculus/platform/OVRServiceSynchronous",
            "<TT;>.ServiceBindResult;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>.ServiceBindResult;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Z

    .line 252
    return-object p0
.end method

.method public success(Landroid/os/IInterface;Landroid/os/Messenger;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
    .locals 0
    .param p2, "messenger"    # Landroid/os/Messenger;
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
    .line 245
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;, "Lcom/oculus/platform/OVRServiceSynchronous<TT;>.ServiceBindResult;"
    .local p1, "serviceInterface":Landroid/os/IInterface;, "TT;"
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    .line 246
    iput-object p2, p0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mMessenger:Landroid/os/Messenger;

    .line 247
    return-object p0
.end method
