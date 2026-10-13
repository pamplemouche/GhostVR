.class public Lcom/oculus/horizon/widget/MuteVolumeButton;
.super Landroid/widget/LinearLayout;
.source "MuteVolumeButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/MuteVolumeButton$OnMuteChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsMuted:Z

.field private final mMuteIcon:Landroid/widget/ImageView;

.field private mOnMuteChangedListener:Lcom/oculus/horizon/widget/MuteVolumeButton$OnMuteChangedListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUnmuteIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/oculus/horizon/widget/MuteVolumeButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/widget/MuteVolumeButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/MuteVolumeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/widget/MuteVolumeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    sget v1, Lcom/oculus/horizon/R$layout;->volume_mute_button:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget v0, Lcom/oculus/horizon/R$id;->volume_mute_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/MuteVolumeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mMuteIcon:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/oculus/horizon/R$id;->volume_unmute_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/MuteVolumeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mUnmuteIcon:Landroid/widget/ImageView;

    .line 49
    new-instance v0, Lcom/oculus/horizon/widget/MuteVolumeButton$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/widget/MuteVolumeButton$1;-><init>(Lcom/oculus/horizon/widget/MuteVolumeButton;)V

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/MuteVolumeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method


# virtual methods
.method public isMuted()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mIsMuted:Z

    return v0
.end method

.method public mute()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-static {}, Lcom/oculus/util/thread/ThreadUtils;->assertOnUiThread()V

    .line 70
    iput-boolean v2, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mIsMuted:Z

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mMuteIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mUnmuteIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mOnMuteChangedListener:Lcom/oculus/horizon/widget/MuteVolumeButton$OnMuteChangedListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mOnMuteChangedListener:Lcom/oculus/horizon/widget/MuteVolumeButton$OnMuteChangedListener;

    invoke-interface {v0, p0, v2}, Lcom/oculus/horizon/widget/MuteVolumeButton$OnMuteChangedListener;->onMuteChanged(Lcom/oculus/horizon/widget/MuteVolumeButton;Z)V

    .line 77
    :cond_0
    return-void
.end method

.method public setOnMuteChangedListener(Lcom/oculus/horizon/widget/MuteVolumeButton$OnMuteChangedListener;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mOnMuteChangedListener:Lcom/oculus/horizon/widget/MuteVolumeButton$OnMuteChangedListener;

    .line 64
    return-void
.end method

.method public unMute()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-static {}, Lcom/oculus/util/thread/ThreadUtils;->assertOnUiThread()V

    .line 83
    iput-boolean v2, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mIsMuted:Z

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mUnmuteIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mMuteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mOnMuteChangedListener:Lcom/oculus/horizon/widget/MuteVolumeButton$OnMuteChangedListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton;->mOnMuteChangedListener:Lcom/oculus/horizon/widget/MuteVolumeButton$OnMuteChangedListener;

    invoke-interface {v0, p0, v2}, Lcom/oculus/horizon/widget/MuteVolumeButton$OnMuteChangedListener;->onMuteChanged(Lcom/oculus/horizon/widget/MuteVolumeButton;Z)V

    .line 90
    :cond_0
    return-void
.end method
