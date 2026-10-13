.class public LrY;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/tab/Tab;

.field public final b:LC01;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LrY;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-static {p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object p1

    .line 4
    invoke-interface {p1}, LX01;->i()LC01;

    move-result-object p1

    .line 5
    iput-object p1, p0, LrY;->b:LC01;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, LrY;->b:LC01;

    invoke-virtual {v0}, LC01;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LrY;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    .line 4
    invoke-interface {v2, v0, p1}, LpH0;->onContextualActionBarVisibilityChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, LrY;->b:LC01;

    invoke-virtual {v1}, LC01;->k()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0b03c7

    if-ne v1, v3, :cond_1

    .line 3
    iget-object v1, v0, LrY;->b:LC01;

    check-cast v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 4
    iget-object v1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    .line 5
    new-instance v3, LqY;

    invoke-direct {v3, v0, v1}, LqY;-><init>(LrY;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/locale/LocaleManager;->getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;

    move-result-object v1

    iget-object v4, v0, LrY;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lorg/chromium/chrome/browser/locale/LocaleManager;->a(Landroid/app/Activity;Lorg/chromium/base/Callback;)V

    .line 7
    iget-object v1, v0, LrY;->b:LC01;

    invoke-virtual {v1}, LC01;->j()V

    return v2

    .line 8
    :cond_1
    iget-object v1, v0, LrY;->b:LC01;

    check-cast v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 9
    invoke-virtual {v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_8

    .line 10
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 11
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    .line 12
    iget-boolean v6, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->R:Z

    const v7, 0x7f0b03c5

    const v8, 0x7f0b03c3

    const v9, 0x7f0b03c2

    const v10, 0x7f0b03bf

    const v11, 0x7f0b03c0

    const v12, 0x7f0b03c4

    const v13, 0x1020041

    if-eqz v6, :cond_b

    .line 13
    iget-object v6, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->V:Lm01;

    if-eqz v6, :cond_b

    .line 14
    iget-object v14, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    iget v15, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->P:I

    const/16 v16, 0x69

    if-ne v5, v13, :cond_3

    goto :goto_0

    :cond_3
    if-ne v4, v12, :cond_4

    const/16 v16, 0xc8

    const/16 v2, 0xc8

    goto :goto_2

    :cond_4
    if-ne v4, v11, :cond_5

    const/16 v16, 0x67

    const/16 v2, 0x67

    goto :goto_2

    :cond_5
    if-ne v4, v10, :cond_6

    const/16 v16, 0x65

    const/16 v2, 0x65

    goto :goto_2

    :cond_6
    if-eq v4, v9, :cond_a

    if-ne v4, v8, :cond_7

    goto :goto_1

    :cond_7
    if-ne v4, v7, :cond_8

    const/16 v16, 0x68

    const/16 v2, 0x68

    goto :goto_2

    :cond_8
    if-ne v4, v13, :cond_9

    :goto_0
    const/16 v2, 0x69

    goto :goto_2

    :cond_9
    const/16 v16, 0x6c

    const/16 v2, 0x6c

    goto :goto_2

    :cond_a
    :goto_1
    const/16 v16, 0x66

    const/16 v2, 0x66

    .line 15
    :goto_2
    iget-object v3, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    .line 16
    invoke-virtual {v6, v14, v15, v2, v3}, Lm01;->a(Ljava/lang/String;IILT01;)V

    :cond_b
    const v2, 0x7f0b03be

    if-ne v5, v2, :cond_10

    if-ne v4, v13, :cond_10

    .line 17
    iget-object v2, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, LT01;->a()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_3

    .line 18
    :cond_c
    iget-object v2, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    iget-object v3, v2, LT01;->f:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_d

    .line 19
    iget-object v1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    invoke-interface {v3, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_3

    .line 20
    :cond_d
    iget-object v2, v2, LT01;->e:Landroid/content/Intent;

    if-eqz v2, :cond_f

    .line 21
    iget-object v2, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v2}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-nez v2, :cond_e

    goto :goto_3

    .line 22
    :cond_e
    iget-object v1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    iget-object v1, v1, LT01;->e:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    :cond_f
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_4

    :cond_10
    if-ne v4, v12, :cond_11

    .line 24
    invoke-virtual {v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x()V

    :goto_4
    const/4 v6, 0x1

    goto/16 :goto_7

    :cond_11
    if-ne v4, v11, :cond_12

    .line 25
    iget-object v1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->d()V

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_4

    :cond_12
    if-ne v4, v10, :cond_13

    .line 27
    iget-object v1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->c()V

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_4

    :cond_13
    if-ne v4, v9, :cond_14

    .line 29
    iget-object v1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->r()V

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_4

    .line 31
    :cond_14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_15

    if-ne v4, v8, :cond_15

    .line 32
    iget-object v1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 33
    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 34
    iget-wide v2, v1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 35
    invoke-static {v2, v3, v1}, LJ/N;->MdSkKRWg(JLjava/lang/Object;)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_4

    :cond_15
    const/high16 v2, 0x10000000

    if-ne v4, v7, :cond_17

    const-string v3, "MobileActionMode.Share"

    .line 37
    invoke-static {v3}, LhV;->a(Ljava/lang/String;)V

    .line 38
    iget-object v3, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    const v4, 0x186a0

    .line 39
    invoke-static {v3, v4}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_5

    .line 41
    :cond_16
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "text/plain"

    .line 42
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.TEXT"

    .line 43
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    :try_start_0
    iget-object v3, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x:Landroid/content/Context;

    const v5, 0x7f130132

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 45
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    iget-object v1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_4

    :cond_17
    const/16 v3, 0x3e8

    const v6, 0x7f0b03c7

    if-ne v4, v6, :cond_19

    const-string v4, "MobileActionMode.WebSearch"

    .line 48
    invoke-static {v4}, LhV;->a(Ljava/lang/String;)V

    .line 49
    iget-object v4, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    .line 50
    invoke-static {v4, v3}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v6, 0x1

    goto :goto_6

    .line 52
    :cond_18
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.WEB_SEARCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "new_search"

    const/4 v6, 0x1

    .line 53
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "query"

    .line 54
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v3, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.android.browser.application_id"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    :try_start_1
    iget-object v1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :catch_1
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_7

    :cond_19
    const/4 v6, 0x1

    const v2, 0x7f0b03c6

    if-ne v5, v2, :cond_1b

    .line 59
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "MobileActionMode.ProcessTextIntent"

    .line 60
    invoke-static {v4}, LhV;->a(Ljava/lang/String;)V

    .line 61
    iget-object v4, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    .line 62
    invoke-static {v4, v3}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_7

    :cond_1a
    const-string v4, "android.intent.extra.PROCESS_TEXT"

    .line 64
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    :try_start_2
    iget-object v3, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v4, Lg01;

    invoke-direct {v4, v1}, Lg01;-><init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v4, v1}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)Z
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :cond_1b
    if-ne v5, v13, :cond_1d

    .line 66
    iget-object v2, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a0:LHZ0;

    if-eqz v2, :cond_1c

    .line 67
    iget-object v1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    move-object/from16 v3, p2

    invoke-interface {v2, v3, v1}, LHZ0;->a(Landroid/view/MenuItem;Landroid/view/View;)V

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    :catch_2
    :cond_1c
    :goto_7
    const/4 v2, 0x1

    goto :goto_8

    :cond_1d
    const/4 v2, 0x0

    :goto_8
    return v2
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p2}, LrY;->a(Z)V

    .line 2
    invoke-static {}, LFc0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 3
    :goto_0
    iget-object v1, p0, LrY;->b:LC01;

    move-object v2, v1

    check-cast v2, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 4
    iput v0, v2, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->H:I

    .line 5
    check-cast v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 6
    iget-object v0, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y:Lorg/chromium/ui/base/WindowAndroid;

    .line 7
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 8
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c001a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    const/4 v0, 0x0

    if-eqz v2, :cond_3

    .line 10
    iget-object v1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x:Landroid/content/Context;

    const v2, 0x7f130133

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    .line 11
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object p1, p0, LrY;->b:LC01;

    check-cast p1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->G:Landroid/view/ActionMode;

    .line 3
    iget-boolean v0, p1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->N:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->f()V

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, LrY;->a(Z)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 12

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, LrY;->a(Z)V

    .line 2
    iget-object v1, p0, LrY;->b:LC01;

    check-cast v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 3
    iget-object v2, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a0:LHZ0;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2}, LHZ0;->a()V

    :cond_0
    const v2, 0x7f0b03c1

    .line 5
    invoke-interface {p2, v2}, Landroid/view/Menu;->removeGroup(I)V

    const v2, 0x7f0b03be

    .line 6
    invoke-interface {p2, v2}, Landroid/view/Menu;->removeGroup(I)V

    const v3, 0x7f0b03c6

    .line 7
    invoke-interface {p2, v3}, Landroid/view/Menu;->removeGroup(I)V

    const v4, 0x1020041

    .line 8
    invoke-interface {p2, v4}, Landroid/view/Menu;->removeGroup(I)V

    .line 9
    iget-object v5, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x:Landroid/content/Context;

    const v6, 0x7f0f000a

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    invoke-virtual {p1, v6, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    new-instance p1, Landroid/view/MenuInflater;

    invoke-direct {p1, v5}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v6, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-ge p1, v5, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, LT01;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    iget-object p1, p1, LT01;->c:Ljava/lang/CharSequence;

    invoke-interface {p2, v2, v4, v0, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v2, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    iget-object v2, v2, LT01;->d:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 16
    :cond_2
    :goto_1
    iget-boolean p1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->J:Z

    const v2, 0x7f0b03c3

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->m()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    const p1, 0x7f0b03c2

    .line 18
    invoke-interface {p2, p1}, Landroid/view/Menu;->removeItem(I)V

    .line 19
    invoke-interface {p2, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 20
    :cond_4
    invoke-virtual {v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->n()Z

    move-result p1

    if-nez p1, :cond_5

    .line 21
    invoke-interface {p2, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 22
    :cond_5
    iget-boolean p1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->R:Z

    const v4, 0x7f0b03c7

    const v5, 0x7f0b03c5

    const v6, 0x7f0b03bf

    const v7, 0x7f0b03c0

    if-nez p1, :cond_6

    const p1, 0x7f0b03c4

    .line 23
    invoke-interface {p2, p1}, Landroid/view/Menu;->removeItem(I)V

    .line 24
    invoke-interface {p2, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 25
    invoke-interface {p2, v6}, Landroid/view/Menu;->removeItem(I)V

    .line 26
    invoke-interface {p2, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 27
    invoke-interface {p2, v4}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2

    .line 28
    :cond_6
    iget-boolean p1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->J:Z

    if-nez p1, :cond_7

    .line 29
    invoke-interface {p2, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 30
    :cond_7
    iget-boolean p1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->J:Z

    if-nez p1, :cond_8

    .line 31
    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 32
    :cond_8
    invoke-interface {p2, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 33
    :cond_9
    iget-boolean p1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->J:Z

    if-nez p1, :cond_a

    .line 34
    iget-object p1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x2

    .line 35
    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(I)Z

    move-result p1

    if-nez p1, :cond_b

    .line 36
    :cond_a
    invoke-interface {p2, v4}, Landroid/view/Menu;->removeItem(I)V

    .line 37
    :cond_b
    iget-boolean p1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->K:Z

    if-eqz p1, :cond_c

    .line 38
    invoke-interface {p2, v6}, Landroid/view/Menu;->removeItem(I)V

    .line 39
    invoke-interface {p2, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 40
    :cond_c
    :goto_2
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_3

    :cond_d
    const v2, 0x1040019

    .line 41
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 42
    :goto_3
    iget-object p1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 43
    iget-object v2, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    if-eqz v2, :cond_e

    iget-object v4, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a0:LHZ0;

    if-eqz v4, :cond_e

    if-eqz p1, :cond_e

    .line 44
    iget-object v2, v2, LT01;->g:Landroid/view/textclassifier/TextClassification;

    invoke-interface {v4, p1, p2, v2}, LHZ0;->a(Landroid/content/Context;Landroid/view/Menu;Landroid/view/textclassifier/TextClassification;)V

    .line 45
    :cond_e
    iget-boolean p1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->R:Z

    if-eqz p1, :cond_11

    .line 46
    iget-boolean p1, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->K:Z

    if-eqz p1, :cond_f

    goto :goto_5

    .line 47
    :cond_f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p1, v2, :cond_11

    const/4 p1, 0x4

    .line 48
    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(I)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_5

    .line 49
    :cond_10
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v4, "text/plain"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v5, 0x0

    .line 50
    invoke-static {p1, v5}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const/4 v6, 0x0

    .line 51
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_11

    .line 52
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 53
    iget-object v8, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    add-int/lit8 v9, v6, 0x64

    .line 54
    invoke-interface {p2, v3, v5, v9, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    .line 55
    iget-boolean v9, v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->J:Z

    xor-int/2addr v9, v0

    .line 56
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.extra.PROCESS_TEXT_READONLY"

    .line 57
    invoke-virtual {v10, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v9

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 58
    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 59
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v7

    .line 60
    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_11
    :goto_5
    return v0
.end method
