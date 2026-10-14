.class public final Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;


# static fields
.field static final synthetic m:[La/e/e;


# instance fields
.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private final r:La/b;

.field private s:Z

.field private t:Z

.field private final u:Ljava/lang/String;

.field private v:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [La/e/e;

    new-instance v1, La/c/b/n;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-static {v2}, La/c/b/o;->a(Ljava/lang/Class;)La/e/b;

    move-result-object v2

    const-string v3, "mLoadingDialog"

    const-string v4, "getMLoadingDialog()Landroid/support/v7/app/SeslProgressDialog;"

    invoke-direct {v1, v2, v3, v4}, La/c/b/n;-><init>(La/e/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, La/c/b/o;->a(La/c/b/m;)La/e/g;

    move-result-object v1

    check-cast v1, La/e/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->m:[La/e/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;-><init>()V

    const-string v0, "eula/%w/%y%z/eula.txt"

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->n:Ljava/lang/String;

    const-string v0, "hs/%y%z/hs.txt"

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->q:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/v;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/v;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V

    check-cast v0, La/c/a/a;

    invoke-static {v0}, La/c;->a(La/c/a/a;)La/b;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->r:La/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->t:Z

    const-string v0, "eula_agree_checked"

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->u:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->k()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-boolean v3, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->t:Z

    if-eqz v3, :cond_0

    const-string v3, "global"

    goto :goto_0

    :cond_0
    const-string v3, "china"

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mEula for global : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->t:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const-string v4, "locale"

    invoke-static {v2, v4}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v10, "locale.language"

    invoke-static {v4, v10}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "null cannot be cast to non-null type java.lang.String"

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v9, "(this as java.lang.String).toLowerCase()"

    invoke-static {v14, v9}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "%y"

    move-object/from16 v12, p1

    invoke-static/range {v12 .. v17}, La/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v4, 0x5f

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, "locale.country"

    invoke-static {v5, v6}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    const-string v19, "%z"

    invoke-static/range {v18 .. v23}, La/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v12, 0x0

    const-string v5, "%w"

    move-object v6, v3

    move-object v13, v9

    move-object v9, v12

    invoke-static/range {v4 .. v9}, La/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v13}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "%y"

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, La/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "%z"

    const-string v12, ""

    invoke-static/range {v10 .. v15}, La/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%w"

    move-object v6, v3

    invoke-static/range {v4 .. v9}, La/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "%y"

    const-string v6, "en"

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, La/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "%z"

    const-string v12, ""

    invoke-static/range {v10 .. v15}, La/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%w"

    move-object v6, v3

    invoke-static/range {v4 .. v9}, La/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, La/i;

    invoke-direct {v1, v11}, La/i;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, La/i;

    invoke-direct {v1, v11}, La/i;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, La/i;

    invoke-direct {v1, v11}, La/i;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->p:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->t:Z

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->q()V

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->p()V

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->q:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->o()V

    return-void
.end method

.method public static final synthetic e(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->s:Z

    return p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->q:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic j(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Landroid/support/v7/app/az;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->m()Landroid/support/v7/app/az;

    move-result-object p0

    return-object p0
.end method

.method private final m()Landroid/support/v7/app/az;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->r:La/b;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->m:[La/e/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, La/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/az;

    return-object v0
.end method

.method private final n()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " initResource()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/app/vrsetupwizard/b;->eula_agree_confirm_text_view:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "eula_agree_confirm_text_view"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0f0015

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/vrsetupwizard/b;->eula_agree_confirm_checkbox:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const-string v2, "eula_agree_confirm_checkbox"

    invoke-static {v1, v2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->u:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->p()V

    sget v0, Lcom/samsung/android/app/vrsetupwizard/b;->eula_agree_confirm_checkbox:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/r;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/r;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/samsung/android/app/vrsetupwizard/b;->linear_eula_agree_confirm:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/s;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/s;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/samsung/android/app/vrsetupwizard/b;->eula_agree_confirm_text_view:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/t;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/t;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/samsung/android/app/vrsetupwizard/b;->next_btn_area:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/u;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/u;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final o()V
    .locals 3

    sget v0, Lcom/samsung/android/app/vrsetupwizard/b;->eula_agree_confirm_checkbox:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "eula_agree_confirm_checkbox"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/app/vrsetupwizard/b;->eula_agree_confirm_checkbox:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-static {v2, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->p()V

    return-void
.end method

.method private final p()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->u:Ljava/lang/String;

    sget v2, Lcom/samsung/android/app/vrsetupwizard/b;->eula_agree_confirm_checkbox:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const-string v3, "eula_agree_confirm_checkbox"

    invoke-static {v2, v3}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget v0, Lcom/samsung/android/app/vrsetupwizard/b;->eula_agree_confirm_checkbox:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {v0, v3}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "next_btn_text"

    const-string v2, "next_btn_area"

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/app/vrsetupwizard/b;->next_btn_text:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    sget v0, Lcom/samsung/android/app/vrsetupwizard/b;->next_btn_area:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/app/vrsetupwizard/b;->next_btn_text:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x3e8f5c29    # 0.28f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    sget v0, Lcom/samsung/android/app/vrsetupwizard/b;->next_btn_area:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    sget v0, Lcom/samsung/android/app/vrsetupwizard/b;->next_btn_area:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method

.method private final q()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public c(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->v:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->v:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->v:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->v:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->k()Landroid/content/Context;

    move-result-object p1

    const-string v0, "[SetupWizard] WarningAgreeActivity onCreate()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7f0c0073

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->setContentView(I)V

    const p1, 0x7f0f0080

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->b(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "is_using_data_network"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->s:Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->n()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->m()Landroid/support/v7/app/az;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/az;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->k()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    const-string v1, "999"

    const-string v2, "000"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, La/a/b;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getMCC failed : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", run MCCTransaction"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/w;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/w;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/aa;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/aa;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->b()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1cc

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->t:Z

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->q()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onDestroy()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "keyEvent"

    invoke-static {p2, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onKeyDown()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->k()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/CompatibleWarningActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->s:Z

    const-string v2, "is_using_data_network"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->finish()V

    const v0, 0x7f010021

    const v1, 0x7f010024

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->finishAndRemoveTask()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onResume()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const-string v0, "502"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->p()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method
