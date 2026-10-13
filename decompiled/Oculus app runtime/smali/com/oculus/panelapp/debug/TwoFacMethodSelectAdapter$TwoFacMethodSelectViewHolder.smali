.class Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TwoFacMethodSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TwoFacMethodSelectViewHolder"
.end annotation


# instance fields
.field private mLabel:Lcom/oculus/vrshell/panels/views/ShellButton;

.field final synthetic this$0:Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;Lcom/oculus/vrshell/panels/views/ShellButton;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;->this$0:Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;

    .line 45
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 46
    iput-object p2, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;->mLabel:Lcom/oculus/vrshell/panels/views/ShellButton;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;)Lcom/oculus/vrshell/panels/views/ShellButton;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;->mLabel:Lcom/oculus/vrshell/panels/views/ShellButton;

    return-object p0
.end method
