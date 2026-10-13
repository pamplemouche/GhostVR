.class Lcom/oculus/horizon/main/MainActivity$1;
.super Lcom/oculus/horizon/react/OculusReactDelegate;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/main/MainActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oculus/horizon/main/MainActivity$1;->this$0:Lcom/oculus/horizon/main/MainActivity;

    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeBaseActivityBackPressed()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity$1;->this$0:Lcom/oculus/horizon/main/MainActivity;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainActivity;->access$001(Lcom/oculus/horizon/main/MainActivity;)V

    .line 78
    return-void
.end method
