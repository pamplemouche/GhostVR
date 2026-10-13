.class public Lorg/chromium/ui/base/Clipboard;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# static fields
.field public static d:Lorg/chromium/ui/base/Clipboard;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/ClipboardManager;

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lorg/chromium/ui/base/Clipboard;->a:Landroid/content/Context;

    const-string v1, "clipboard"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lorg/chromium/ui/base/Clipboard;->b:Landroid/content/ClipboardManager;

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/Clipboard;->b(Landroid/content/ClipData;)V

    return-void
.end method

.method private getCoercedText()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/ui/base/Clipboard;->b:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/base/Clipboard;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getHTMLText()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/ui/base/Clipboard;->b:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/Clipboard;->a(Landroid/content/ClipData;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lorg/chromium/ui/base/Clipboard;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/ui/base/Clipboard;->d:Lorg/chromium/ui/base/Clipboard;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/chromium/ui/base/Clipboard;

    invoke-direct {v0}, Lorg/chromium/ui/base/Clipboard;-><init>()V

    sput-object v0, Lorg/chromium/ui/base/Clipboard;->d:Lorg/chromium/ui/base/Clipboard;

    .line 3
    :cond_0
    sget-object v0, Lorg/chromium/ui/base/Clipboard;->d:Lorg/chromium/ui/base/Clipboard;

    return-object v0
.end method

.method private setHTMLText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "html"

    .line 1
    invoke-static {v0, p2, p1}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/Clipboard;->b(Landroid/content/ClipData;)V

    return-void
.end method

.method private setNativePtr(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/chromium/ui/base/Clipboard;->c:J

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ClipData;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/html"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "text/plain"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 6
    instance-of v0, p1, Landroid/text/Spanned;

    if-nez v0, :cond_1

    return-object v1

    .line 7
    :cond_1
    check-cast p1, Landroid/text/Spanned;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Class;

    .line 8
    const-class v4, Landroid/text/style/CharacterStyle;

    aput-object v4, v3, v2

    const-class v4, Landroid/text/style/ParagraphStyle;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-class v6, Landroid/text/style/UpdateAppearance;

    aput-object v6, v3, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 9
    aget-object v6, v3, v4

    const/4 v7, -0x1

    .line 10
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v8

    invoke-interface {p1, v7, v8, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_4

    .line 12
    invoke-static {p1, v2}, LaT;->a(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 13
    :cond_4
    invoke-static {p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_5
    return-object v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    .line 14
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lorg/chromium/ui/base/Clipboard;->b:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 16
    iget-object p1, p0, Lorg/chromium/ui/base/Clipboard;->a:Landroid/content/Context;

    const v0, 0x7f130637

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object p1

    .line 17
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public b(Landroid/content/ClipData;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/ui/base/Clipboard;->b:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object p1, p0, Lorg/chromium/ui/base/Clipboard;->a:Landroid/content/Context;

    const v0, 0x7f130264

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lorg/chromium/ui/base/Clipboard;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onPrimaryClipChanged()V
    .locals 5

    const-string v0, "MobileClipboardChanged"

    .line 1
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lorg/chromium/ui/base/Clipboard;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iget-wide v0, p0, Lorg/chromium/ui/base/Clipboard;->c:J

    .line 4
    invoke-static {v0, v1, p0}, LJ/N;->M3YqItLq(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    .line 1
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/Clipboard;->b(Landroid/content/ClipData;)V

    return-void
.end method
