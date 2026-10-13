.class Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "ThemeTestingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/ThemeTestingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeBaseFragment"
.end annotation


# instance fields
.field private final mDisplayTitle:Ljava/lang/String;

.field private final mThemeResId:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;->mDisplayTitle:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;->mThemeResId:I

    .line 84
    return-void
.end method


# virtual methods
.method public getDisplayTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;->mDisplayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Clicked!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .line 93
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;->mThemeResId:I

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/util/ThemeUtils;->getThemedInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->settings_internal_theme_page_fragment:I

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 96
    sget v1, Lcom/oculus/horizon/R$id;->test_button1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 97
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget v1, Lcom/oculus/horizon/R$id;->test_button2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 100
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget v1, Lcom/oculus/horizon/R$id;->test_button3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 103
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget v1, Lcom/oculus/horizon/R$id;->test_button4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 106
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-object v0
.end method
