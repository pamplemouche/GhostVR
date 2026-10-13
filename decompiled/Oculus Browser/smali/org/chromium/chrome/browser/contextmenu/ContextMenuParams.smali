.class public Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lh11;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:I

.field public final m:I

.field public final n:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh11;ZIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->c:Ljava/lang/String;

    .line 5
    iput-object p7, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->g:Lh11;

    .line 9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->h:Z

    const/4 p2, 0x0

    if-ne p1, p3, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 10
    :goto_0
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->i:Z

    const/4 p4, 0x2

    if-ne p1, p4, :cond_1

    const/4 p2, 0x1

    .line 11
    :cond_1
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->j:Z

    .line 12
    iput-boolean p9, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->k:Z

    .line 13
    iput p10, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->l:I

    .line 14
    iput p11, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->m:I

    .line 15
    iput p12, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->n:I

    return-void
.end method

.method public static create(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIII)Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;
    .locals 14

    .line 1
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lh11;

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lh11;-><init>(Ljava/lang/String;I)V

    :goto_0
    move-object v9, v0

    .line 3
    new-instance v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    move-object v1, v0

    move v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh11;ZIII)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
