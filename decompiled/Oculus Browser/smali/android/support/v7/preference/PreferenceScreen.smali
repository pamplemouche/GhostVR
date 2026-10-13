.class public final Landroid/support/v7/preference/PreferenceScreen;
.super Lvc;
.source "PG"


# instance fields
.field public r0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0401c1

    const v1, 0x101008b

    .line 1
    invoke-static {p1, v0, v1}, Lm4;->a(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lvc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceScreen;->r0:Z

    return-void
.end method


# virtual methods
.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->J:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lvc;->w()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    .line 5
    iget-object v0, v0, LDc;->k:LBc;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p0}, LBc;->a(Landroid/support/v7/preference/PreferenceScreen;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
