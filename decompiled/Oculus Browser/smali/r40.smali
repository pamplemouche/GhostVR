.class public final synthetic Lr40;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LD40;

.field public final x:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

.field public final y:LL40;

.field public final z:Landroid/app/Activity;


# direct methods
.method public constructor <init>(LD40;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;LL40;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr40;->w:LD40;

    iput-object p2, p0, Lr40;->x:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    iput-object p3, p0, Lr40;->y:LL40;

    iput-object p4, p0, Lr40;->z:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lr40;->w:LD40;

    iget-object v2, v0, Lr40;->x:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    iget-object v3, v0, Lr40;->y:LL40;

    iget-object v7, v0, Lr40;->z:Landroid/app/Activity;

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 1
    iget-boolean v5, v3, LL40;->c:Z

    if-eqz v5, :cond_0

    const/16 v5, 0x1a

    goto :goto_0

    :cond_0
    const/16 v5, 0x1b

    .line 2
    :goto_0
    invoke-static {v2, v5}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 3
    iget-object v5, v1, LD40;->d:LnM0;

    new-instance v6, Ls40;

    invoke-direct {v6, v1}, Ls40;-><init>(LD40;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4
    iget-object v5, v1, LD40;->d:LnM0;

    invoke-virtual {v5}, LnM0;->dismiss()V

    .line 5
    iget-boolean v3, v3, LL40;->c:Z

    if-eqz v3, :cond_3

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 6
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-static {v1}, LZS0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " "

    .line 10
    invoke-static {v4, v2, v1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v9, v1

    move-object v10, v9

    goto :goto_2

    :cond_2
    :goto_1
    move-object v10, v1

    move-object v9, v4

    .line 11
    :goto_2
    new-instance v1, LWD0;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v18}, LWD0;-><init>(ZZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/net/Uri;Landroid/net/Uri;LRD0;Ljava/lang/String;Ljava/lang/Runnable;LUD0;)V

    .line 12
    invoke-static {v1}, LTD0;->a(LWD0;)V

    goto :goto_3

    .line 13
    :cond_3
    iget-object v1, v1, LD40;->e:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_3
    return-void

    .line 14
    :cond_4
    throw v4
.end method
