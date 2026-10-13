.class Lcom/oculus/horizon/main/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/main/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 92
    iput-object p1, p0, Lcom/oculus/horizon/main/MainActivity$2;->this$0:Lcom/oculus/horizon/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity$2;->this$0:Lcom/oculus/horizon/main/MainActivity;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainActivity;->access$100(Lcom/oculus/horizon/main/MainActivity;)V

    .line 96
    return-void
.end method
