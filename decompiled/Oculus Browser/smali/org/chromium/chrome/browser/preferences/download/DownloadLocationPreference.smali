.class public Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;
.super Lec;
.source "PG"

# interfaces
.implements Lzz0;


# instance fields
.field public o0:LBz0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0400c5

    const v1, 0x1010091

    .line 1
    invoke-static {p1, v0, v1}, Lm4;->a(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0e0098

    .line 3
    iput p1, p0, Lec;->n0:I

    .line 4
    new-instance p1, LBz0;

    .line 5
    iget-object p2, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 6
    invoke-direct {p1, p2, p0}, LBz0;-><init>(Landroid/content/Context;Lzz0;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;->o0:LBz0;

    .line 7
    invoke-virtual {p1}, LAz0;->a()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;->w()V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;->o0:LBz0;

    .line 2
    iget v1, v0, LAz0;->w:I

    .line 3
    sget v2, LAz0;->D:I

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {v0}, LAz0;->b()I

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;->w()V

    return-void
.end method

.method public w()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;->o0:LBz0;

    .line 2
    iget v1, v0, LAz0;->w:I

    if-gez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, LAz0;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN70;

    .line 4
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5
    iget-object v2, v0, LN70;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v2, " "

    .line 6
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7
    iget-object v2, v0, LN70;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v3, 0x0

    iget-object v0, v0, LN70;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x21

    .line 10
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
