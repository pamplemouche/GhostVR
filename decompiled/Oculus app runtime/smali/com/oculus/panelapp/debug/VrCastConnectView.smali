.class Lcom/oculus/panelapp/debug/VrCastConnectView;
.super Ljava/lang/Object;
.source "VrCastConnectView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VrCastConnectView"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCastManager:Lcom/oculus/panelapp/debug/VrCastManager;

.field private mContext:Landroid/content/Context;

.field private mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

.field private mDeviceInfoText:Landroid/widget/TextView;

.field private mDeviceStatusText:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/panelapp/debug/VrCastManager;Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mCastManager:Lcom/oculus/panelapp/debug/VrCastManager;

    .line 33
    iput-object p3, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mView:Landroid/view/View;

    .line 34
    sget p1, Lcom/oculus/panelapp/debug/R$id;->vrcast_connect_progress:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 35
    sget p1, Lcom/oculus/panelapp/debug/R$id;->vrcast_device_info_text:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mDeviceInfoText:Landroid/widget/TextView;

    .line 36
    sget p1, Lcom/oculus/panelapp/debug/R$id;->vrcast_device_status_text:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mDeviceStatusText:Landroid/widget/TextView;

    .line 37
    sget p1, Lcom/oculus/panelapp/debug/R$id;->vrcast_cancel_button:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mCancelButton:Landroid/widget/Button;

    .line 38
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mCancelButton:Landroid/widget/Button;

    new-instance p2, Lcom/oculus/panelapp/debug/VrCastConnectView$1;

    invoke-direct {p2, p0}, Lcom/oculus/panelapp/debug/VrCastConnectView$1;-><init>(Lcom/oculus/panelapp/debug/VrCastConnectView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/debug/VrCastConnectView;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/oculus/panelapp/debug/VrCastConnectView;->onCancelClicked()V

    return-void
.end method

.method private onCancelClicked()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mCastManager:Lcom/oculus/panelapp/debug/VrCastManager;

    invoke-virtual {v1, v0}, Lcom/oculus/panelapp/debug/VrCastManager;->stopCast(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    return-void
.end method


# virtual methods
.method public onDeviceStateUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 3

    .line 57
    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    .line 59
    sget-object v0, Lcom/oculus/panelapp/debug/VrCastConnectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceStateUpdated() called with: device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    const/16 v0, 0x8

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    iget-object p1, p1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->state:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    sget-object v2, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CASTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    iget-object p1, p1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->state:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    sget-object v2, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->FOUND:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    if-eq p1, v2, :cond_2

    .line 72
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    :goto_1
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mDeviceInfoText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    iget-object v1, v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    iget-object v1, v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mDeviceStatusText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/VrCastConnectView;->mDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    iget-object v1, v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->state:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    invoke-virtual {v1}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
