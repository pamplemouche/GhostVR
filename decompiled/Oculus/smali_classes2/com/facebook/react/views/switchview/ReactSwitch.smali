.class Lcom/facebook/react/views/switchview/ReactSwitch;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "ReactSwitch.java"


# instance fields
.field private mAllowChange:Z

.field private mTrackColorForFalse:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTrackColorForTrue:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mAllowChange:Z

    .line 29
    iput-object v1, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForFalse:Ljava/lang/Integer;

    .line 30
    iput-object v1, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForTrue:Ljava/lang/Integer;

    .line 31
    return-void
.end method

.method private setTrackColor(Z)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForTrue:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForFalse:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForTrue:Ljava/lang/Integer;

    .line 99
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColor(Ljava/lang/Integer;)V

    .line 101
    :cond_1
    return-void

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForFalse:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mAllowChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitch;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mAllowChange:Z

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColor(Z)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitch;->isChecked()Z

    move-result v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_0
.end method

.method setColor(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 2
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method setOn(Z)V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitch;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 66
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColor(Z)V

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mAllowChange:Z

    .line 70
    return-void
.end method

.method public setThumbColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/views/switchview/ReactSwitch;->setColor(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    .line 61
    return-void
.end method

.method public setTrackColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/views/switchview/ReactSwitch;->setColor(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    .line 57
    return-void
.end method

.method public setTrackColorForFalse(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForFalse:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iput-object p1, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForFalse:Ljava/lang/Integer;

    .line 89
    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForFalse:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColor(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setTrackColorForTrue(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForTrue:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iput-object p1, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForTrue:Ljava/lang/Integer;

    .line 78
    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForTrue:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColor(Ljava/lang/Integer;)V

    goto :goto_0
.end method
