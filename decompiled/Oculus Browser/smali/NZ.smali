.class public final synthetic LNZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lvf1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Lorg/chromium/content_public/common/ResourceRequestBody;

.field public final i:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNZ;->a:Ljava/lang/String;

    iput-object p2, p0, LNZ;->b:Ljava/lang/String;

    iput p3, p0, LNZ;->c:I

    iput-boolean p4, p0, LNZ;->d:Z

    iput-object p5, p0, LNZ;->e:Ljava/lang/String;

    iput p6, p0, LNZ;->f:I

    iput-object p7, p0, LNZ;->g:Ljava/lang/String;

    iput-object p8, p0, LNZ;->h:Lorg/chromium/content_public/common/ResourceRequestBody;

    iput-object p9, p0, LNZ;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 8

    iget-object p2, p0, LNZ;->a:Ljava/lang/String;

    iget-object v2, p0, LNZ;->b:Ljava/lang/String;

    iget v0, p0, LNZ;->c:I

    iget-boolean v1, p0, LNZ;->d:Z

    iget-object v3, p0, LNZ;->e:Ljava/lang/String;

    iget v4, p0, LNZ;->f:I

    iget-object v5, p0, LNZ;->g:Ljava/lang/String;

    iget-object v6, p0, LNZ;->h:Lorg/chromium/content_public/common/ResourceRequestBody;

    iget-object v7, p0, LNZ;->i:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    invoke-static {p2, v2, p1}, Lxf1;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "org.chromium.chrome.browser.webapp_source"

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static/range {v0 .. v7}, Lorg/chromium/chrome/browser/ServiceTabLauncher;->a(IZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;Ljava/util/List;)V

    :goto_0
    return-void
.end method
