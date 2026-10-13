.class public Lorg/chromium/content/browser/input/DateTimeChooserAndroid;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field public final b:LuZ0;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->a:J

    .line 3
    new-instance p2, LuZ0;

    new-instance p3, LTX0;

    invoke-direct {p3, p0}, LTX0;-><init>(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;)V

    invoke-direct {p2, p1, p3}, LuZ0;-><init>(Landroid/content/Context;LrZ0;)V

    iput-object p2, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->b:LuZ0;

    return-void
.end method

.method public static createDateTimeChooser(Lorg/chromium/ui/base/WindowAndroid;JIDDDD[Lorg/chromium/content/browser/picker/DateTimeSuggestion;)Lorg/chromium/content/browser/input/DateTimeChooserAndroid;
    .locals 16

    move/from16 v12, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v13, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    move-wide/from16 v1, p1

    invoke-direct {v13, v0, v1, v2}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;-><init>(Landroid/content/Context;J)V

    .line 3
    iget-object v14, v13, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->b:LuZ0;

    .line 4
    invoke-virtual {v14}, LuZ0;->a()V

    if-nez p12, :cond_1

    move-object v0, v14

    move/from16 v1, p3

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    .line 5
    invoke-virtual/range {v0 .. v9}, LuZ0;->a(IDDDD)V

    move-object/from16 p0, v13

    goto/16 :goto_2

    .line 6
    :cond_1
    new-instance v15, Landroid/widget/ListView;

    iget-object v0, v14, LuZ0;->a:Landroid/content/Context;

    invoke-direct {v15, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v2, LiZ0;

    iget-object v0, v14, LuZ0;->a:Landroid/content/Context;

    .line 8
    invoke-static/range {p12 .. p12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v0, v1}, LiZ0;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 9
    invoke-virtual {v15, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    new-instance v10, LjZ0;

    move-object v0, v10

    move-object v1, v14

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 p0, v13

    move-object v13, v10

    move-wide/from16 v10, p10

    invoke-direct/range {v0 .. v11}, LjZ0;-><init>(LuZ0;LiZ0;IDDDD)V

    invoke-virtual {v15, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0xc

    if-ne v12, v0, :cond_2

    const v0, 0x7f13060a

    goto :goto_1

    :cond_2
    const/16 v0, 0x9

    if-eq v12, v0, :cond_6

    const/16 v0, 0xa

    if-ne v12, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0xb

    if-ne v12, v0, :cond_4

    const v0, 0x7f1303e7

    goto :goto_1

    :cond_4
    const/16 v0, 0xd

    if-ne v12, v0, :cond_5

    const v0, 0x7f1306ab

    goto :goto_1

    :cond_5
    const v0, 0x7f130295

    goto :goto_1

    :cond_6
    :goto_0
    const v0, 0x7f130296

    .line 11
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v14, LuZ0;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, v14, LuZ0;->a:Landroid/content/Context;

    const/high16 v2, 0x1040000

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, LkZ0;

    invoke-direct {v2, v14}, LkZ0;-><init>(LuZ0;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v14, LuZ0;->c:Landroid/app/AlertDialog;

    .line 16
    new-instance v1, LlZ0;

    invoke-direct {v1, v14}, LlZ0;-><init>(LuZ0;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, v14, LuZ0;->b:Z

    .line 18
    iget-object v0, v14, LuZ0;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_2
    return-object p0
.end method

.method public static createSuggestionsArray(I)[Lorg/chromium/content/browser/picker/DateTimeSuggestion;
    .locals 0

    .line 1
    new-array p0, p0, [Lorg/chromium/content/browser/picker/DateTimeSuggestion;

    return-object p0
.end method

.method public static setDateTimeSuggestionAt([Lorg/chromium/content/browser/picker/DateTimeSuggestion;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/content/browser/picker/DateTimeSuggestion;

    invoke-direct {v0, p2, p3, p4, p5}, Lorg/chromium/content/browser/picker/DateTimeSuggestion;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    aput-object v0, p0, p1

    return-void
.end method
