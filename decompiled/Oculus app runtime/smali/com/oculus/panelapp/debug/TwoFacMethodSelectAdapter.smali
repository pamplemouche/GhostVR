.class public Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TwoFacMethodSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwoFacMethodSelectAdapter"


# instance fields
.field private final mCallback:Lcom/oculus/panelapp/debug/UserTab$TwoFacMethodSelectCallback;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;"
        }
    .end annotation
.end field

.field private nonce:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab$TwoFacMethodSelectCallback;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/panelapp/debug/UserTab$TwoFacMethodSelectCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->mCallback:Lcom/oculus/panelapp/debug/UserTab$TwoFacMethodSelectCallback;

    .line 24
    iput-object p2, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;)Lcom/oculus/panelapp/debug/UserTab$TwoFacMethodSelectCallback;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->mCallback:Lcom/oculus/panelapp/debug/UserTab$TwoFacMethodSelectCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->nonce:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->onBindViewHolder(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;I)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;

    .line 67
    invoke-static {p1}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;->access$000(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;)Lcom/oculus/vrshell/panels/views/ShellButton;

    move-result-object v0

    iget-object v1, p2, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {p1}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;->access$000(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;)Lcom/oculus/vrshell/panels/views/ShellButton;

    move-result-object p1

    new-instance v0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$1;-><init>(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;)V

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;
    .locals 2

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/oculus/panelapp/debug/R$layout;->twofac_method_item:I

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 61
    new-instance p2, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;-><init>(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;Lcom/oculus/vrshell/panels/views/ShellButton;)V

    return-object p2
.end method

.method setItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->mItems:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setNonce(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->nonce:Ljava/lang/String;

    return-void
.end method
