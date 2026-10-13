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
.field public mBindError:I

.field public mMessenger:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/oculus/platform/OVRServiceSynchronous;


# direct methods
.method public constructor <init>(Lcom/oculus/platform/OVRServiceSynchronous;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(I)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
    .locals 0

    .line 208
    iput p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:I

    return-object p0
.end method

.method public success(Landroid/os/Messenger;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method
