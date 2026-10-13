.class public Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "PG"


# instance fields
.field public final J:Ljava/lang/String;

.field public final K:Z

.field public final L:Ljava/lang/String;

.field public final M:Z

.field public final N:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ZZ)V
    .locals 9

    const v0, 0x7f1302ef

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f1301d4

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v2, 0x7f080242

    const v3, 0x7f0600e9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 3
    invoke-direct/range {v1 .. v8}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->J:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->K:Z

    .line 6
    iput-object p4, p0, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->L:Ljava/lang/String;

    .line 7
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->M:Z

    .line 8
    iput-boolean p6, p0, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->N:Z

    return-void
.end method

.method public static createInfoBar(Ljava/lang/String;ZLjava/lang/String;ZZ)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 8

    .line 1
    new-instance v7, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    move-object v0, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ZZ)V

    return-object v7
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 4
    invoke-virtual {v0, p3, v5, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-array p2, v2, [Ljava/lang/CharSequence;

    aput-object v0, p2, v5

    .line 5
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public a(LUf0;)V
    .locals 5

    .line 6
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->a(LUf0;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->N:Z

    if-eqz v1, :cond_0

    const v1, 0x7f1302f1

    goto :goto_0

    :cond_0
    const v1, 0x7f1302f0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->K:Z

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->J:Ljava/lang/String;

    new-instance v3, Lef0;

    invoke-direct {v3, p0, v0}, Lef0;-><init>(Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;Landroid/content/Context;)V

    invoke-virtual {p0, v1, v2, v3}, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->a(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, LUf0;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->J:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 14
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 17
    new-instance v4, Ldf0;

    invoke-direct {v4, p0, v3, v0, v2}, Ldf0;-><init>(Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3, v4}, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->a(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, LUf0;->a(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
