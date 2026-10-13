.class public Lcom/oculus/horizon/widget/OculusMediaController;
.super Landroid/widget/FrameLayout;
.source "OculusMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;
    }
.end annotation


# instance fields
.field private mElapsedTimeTextView:Landroid/widget/TextView;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mOnControlChangedListener:Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPlayPauseButton:Landroid/widget/ImageView;

.field private mRemainingTimeTextView:Landroid/widget/TextView;

.field private mReplayButton:Landroid/view/View;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/OculusMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/widget/OculusMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    sget v1, Lcom/oculus/horizon/R$layout;->widget_oculus_media_controller:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    sget v0, Lcom/oculus/horizon/R$id;->play_pause_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/OculusMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mPlayPauseButton:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mPlayPauseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oculus/horizon/widget/OculusMediaController$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/widget/OculusMediaController$1;-><init>(Lcom/oculus/horizon/widget/OculusMediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget v0, Lcom/oculus/horizon/R$id;->replay_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/OculusMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mReplayButton:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mReplayButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/widget/OculusMediaController$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/widget/OculusMediaController$2;-><init>(Lcom/oculus/horizon/widget/OculusMediaController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget v0, Lcom/oculus/horizon/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/OculusMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mSeekBar:Landroid/widget/SeekBar;

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/oculus/horizon/widget/OculusMediaController$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/widget/OculusMediaController$3;-><init>(Lcom/oculus/horizon/widget/OculusMediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 97
    sget v0, Lcom/oculus/horizon/R$id;->elapsed_time_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/OculusMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mElapsedTimeTextView:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/oculus/horizon/R$id;->remaining_time_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/OculusMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mRemainingTimeTextView:Landroid/widget/TextView;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/widget/OculusMediaController;)Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mOnControlChangedListener:Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;

    return-object v0
.end method

.method private stringForTime(ILjava/util/Locale;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 139
    div-int/lit16 v0, p1, 0x3e8

    .line 141
    rem-int/lit8 v1, v0, 0x3c

    .line 142
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 143
    div-int/lit16 v0, v0, 0xe10

    .line 147
    iget-object v3, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 148
    new-instance v3, Ljava/util/Formatter;

    iget-object v4, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v3, v4, p2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 149
    if-lez v0, :cond_0

    .line 150
    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_0
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 156
    return-object v0

    .line 152
    :cond_0
    const-string v0, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public setCompletion(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mPlayPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mReplayButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mPlayPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mReplayButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnControlChangedListener(Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mOnControlChangedListener:Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;

    .line 105
    return-void
.end method

.method public setProgress(IILjava/util/Locale;)I
    .locals 3

    .prologue
    .line 116
    if-lez p2, :cond_0

    .line 118
    mul-int/lit16 v0, p1, 0x3e8

    div-int/2addr v0, p2

    int-to-long v0, v0

    .line 119
    iget-object v2, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mRemainingTimeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p2, p1

    invoke-direct {p0, v2, p3}, Lcom/oculus/horizon/widget/OculusMediaController;->stringForTime(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mElapsedTimeTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, p3}, Lcom/oculus/horizon/widget/OculusMediaController;->stringForTime(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return p1
.end method

.method public updatePausePlay(Z)V
    .locals 2

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mPlayPauseButton:Landroid/widget/ImageView;

    sget v1, Lcom/oculus/horizon/R$drawable;->widget_oculus_media_controller_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController;->mPlayPauseButton:Landroid/widget/ImageView;

    sget v1, Lcom/oculus/horizon/R$drawable;->widget_oculus_media_controller_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
