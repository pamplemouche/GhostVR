.class public Lvz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Luz0;

    invoke-direct {p1, p0}, Luz0;-><init>(Lvz0;)V

    .line 2
    new-instance v0, LO8;

    iget-object v1, p0, Lvz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;

    .line 3
    iget-object v1, v1, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const v2, 0x7f140245

    .line 4
    invoke-direct {v0, v1, v2}, LO8;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f130291

    .line 5
    invoke-virtual {v0, v1}, LO8;->b(I)LO8;

    const v1, 0x7f130290

    .line 6
    invoke-virtual {v0, v1}, LO8;->a(I)LO8;

    const v1, 0x7f13028f

    .line 7
    invoke-virtual {v0, v1, p1}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const v1, 0x7f1301d4

    .line 8
    invoke-virtual {v0, v1, p1}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 9
    invoke-virtual {v0}, LO8;->b()LP8;

    return-void
.end method
