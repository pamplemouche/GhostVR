.class public final synthetic LPB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPB0;->w:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    iput-object p2, p0, LPB0;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, LPB0;->w:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    iget-object v0, p0, LPB0;->x:Ljava/lang/String;

    .line 1
    new-instance v1, LO8;

    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object v2

    const v3, 0x7f140245

    invoke-direct {v1, v2, v3}, LO8;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f130531

    .line 2
    invoke-virtual {v1, v2}, LO8;->b(I)LO8;

    .line 3
    iget-object v3, v1, LO8;->a:LK8;

    iput-object v0, v3, LK8;->h:Ljava/lang/CharSequence;

    .line 4
    new-instance v0, LRB0;

    invoke-direct {v0, p1}, LRB0;-><init>(Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;)V

    .line 5
    invoke-virtual {v1, v2, v0}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const p1, 0x7f1301d4

    const/4 v0, 0x0

    .line 6
    invoke-virtual {v1, p1, v0}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 7
    invoke-virtual {v1}, LO8;->b()LP8;

    return-void
.end method
