.class Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "VrCastDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VrCastDevicesAdapter"


# instance fields
.field private mCastController:Lcom/oculus/panelapp/debug/VrCastManager;

.field private final mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->mList:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;)Lcom/oculus/panelapp/debug/VrCastManager;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->mCastController:Lcom/oculus/panelapp/debug/VrCastManager;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->onBindViewHolder(Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->bind(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;
    .locals 3

    .line 34
    new-instance p2, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;

    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/debug/R$layout;->debug_vr_cast_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;-><init>(Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onDevicesFound(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->mList:Ljava/util/List;

    .line 50
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setManager(Lcom/oculus/panelapp/debug/VrCastManager;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->mCastController:Lcom/oculus/panelapp/debug/VrCastManager;

    return-void
.end method
