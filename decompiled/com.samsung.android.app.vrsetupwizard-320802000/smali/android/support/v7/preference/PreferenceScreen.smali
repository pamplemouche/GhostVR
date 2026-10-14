.class public final Landroid/support/v7/preference/PreferenceScreen;
.super Landroid/support/v7/preference/PreferenceGroup;


# instance fields
.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Landroid/support/v7/preference/ao;->preferenceScreenStyle:I

    const v1, 0x101008b

    invoke-static {p1, v0, v1}, Landroid/support/v4/a/a/w;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceScreen;->g:Z

    return-void
.end method


# virtual methods
.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceScreen;->g:Z

    return v0
.end method

.method protected g()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->q()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->r()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->a()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->M()Landroid/support/v7/preference/af;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/af;->i()Landroid/support/v7/preference/ah;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/support/v7/preference/ah;->b(Landroid/support/v7/preference/PreferenceScreen;)V

    :cond_1
    :goto_0
    return-void
.end method
