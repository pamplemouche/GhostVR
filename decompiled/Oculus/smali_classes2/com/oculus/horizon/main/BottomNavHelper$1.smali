.class Lcom/oculus/horizon/main/BottomNavHelper$1;
.super Ljava/lang/Object;
.source "BottomNavHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/main/BottomNavHelper;->getOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/main/BottomNavHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/main/BottomNavHelper;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/oculus/horizon/main/BottomNavHelper$1;->this$0:Lcom/oculus/horizon/main/BottomNavHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/navbaraction/Action;

    .line 176
    iget-object v1, p0, Lcom/oculus/horizon/main/BottomNavHelper$1;->this$0:Lcom/oculus/horizon/main/BottomNavHelper;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/main/BottomNavHelper;->onActionSelected(Lcom/oculus/horizon/navbaraction/Action;)V

    .line 177
    return-void
.end method
