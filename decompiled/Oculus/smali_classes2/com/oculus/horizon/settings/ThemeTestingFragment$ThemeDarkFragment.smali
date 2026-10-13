.class public Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeDarkFragment;
.super Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;
.source "ThemeTestingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/ThemeTestingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeDarkFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "Theme"

    sget v1, Lcom/oculus/horizon/R$style;->Theme:I

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;-><init>(Ljava/lang/String;I)V

    .line 130
    return-void
.end method


# virtual methods
.method public bridge synthetic getDisplayTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
