.class Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VrCastDevicesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VrCastViewHolder"
.end annotation


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

.field private final mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;Landroid/view/View;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->this$0:Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;

    .line 61
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 62
    sget p1, Lcom/oculus/panelapp/debug/R$id;->vrcast_item_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mText:Landroid/widget/TextView;

    .line 63
    sget p1, Lcom/oculus/panelapp/debug/R$id;->vrcast_item_button:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mButton:Landroid/widget/Button;

    .line 64
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 2

    .line 88
    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    .line 89
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    iget-object v0, v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    sget-object p1, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$1;->$SwitchMap$com$oculus$vrcast$VrCastController$VrShellCastDevice$State:[I

    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    iget-object v0, v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->state:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    invoke-virtual {v0}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mButton:Landroid/widget/Button;

    const-string v0, "Disconnecting"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mButton:Landroid/widget/Button;

    const-string v0, "Starting session"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mButton:Landroid/widget/Button;

    const-string v0, "Connecting to peer"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_3
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mButton:Landroid/widget/Button;

    const-string v0, "Stop casting"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :cond_4
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mButton:Landroid/widget/Button;

    const-string v0, "Connect"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    sget-object p1, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$1;->$SwitchMap$com$oculus$vrcast$VrCastController$VrShellCastDevice$State:[I

    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    iget-object v0, v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->state:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    invoke-virtual {v0}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->this$0:Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->access$000(Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;)Lcom/oculus/panelapp/debug/VrCastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/VrCastManager;->stopCast(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->this$0:Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->access$000(Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;)Lcom/oculus/panelapp/debug/VrCastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter$VrCastViewHolder;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/VrCastManager;->startCast(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    :goto_0
    return-void
.end method
