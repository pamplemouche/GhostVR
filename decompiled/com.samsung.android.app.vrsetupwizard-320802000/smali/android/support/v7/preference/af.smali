.class public Landroid/support/v7/preference/af;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/support/v7/preference/q;

.field private e:Landroid/content/SharedPreferences$Editor;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Landroid/support/v7/preference/PreferenceScreen;

.field private k:Landroid/support/v7/preference/aj;

.field private l:Landroid/support/v7/preference/ai;

.field private m:Landroid/support/v7/preference/ag;

.field private n:Landroid/support/v7/preference/ah;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/preference/af;->b:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/preference/af;->i:I

    iput-object p1, p0, Landroid/support/v7/preference/af;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v7/preference/af;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/af;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/af;->e:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/preference/af;->f:Z

    return-void
.end method


# virtual methods
.method a()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/support/v7/preference/af;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/support/v7/preference/af;->b:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/af;->j:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/preference/af;->a(Z)V

    new-instance v0, Landroid/support/v7/preference/ae;

    invoke-direct {v0, p1, p0}, Landroid/support/v7/preference/ae;-><init>(Landroid/content/Context;Landroid/support/v7/preference/af;)V

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/preference/ae;->a(ILandroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/PreferenceScreen;->a(Landroid/support/v7/preference/af;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/support/v7/preference/af;->a(Z)V

    return-object p1
.end method

.method public a(Landroid/support/v7/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/af;->m:Landroid/support/v7/preference/ag;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/support/v7/preference/ag;->c(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/preference/ag;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/af;->m:Landroid/support/v7/preference/ag;

    return-void
.end method

.method public a(Landroid/support/v7/preference/ah;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/af;->n:Landroid/support/v7/preference/ah;

    return-void
.end method

.method public a(Landroid/support/v7/preference/ai;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/af;->l:Landroid/support/v7/preference/ai;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/af;->g:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/preference/af;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public a(Landroid/support/v7/preference/PreferenceScreen;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/af;->j:Landroid/support/v7/preference/PreferenceScreen;

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->O()V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/preference/af;->j:Landroid/support/v7/preference/PreferenceScreen;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/support/v7/preference/q;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/af;->d:Landroid/support/v7/preference/q;

    return-object v0
.end method

.method public c()Landroid/content/SharedPreferences;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/preference/af;->b()Landroid/support/v7/preference/q;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/af;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v7/preference/af;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/af;->a:Landroid/content/Context;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/af;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/a/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/preference/af;->g:Ljava/lang/String;

    iget v2, p0, Landroid/support/v7/preference/af;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/af;->c:Landroid/content/SharedPreferences;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/af;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public d()Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/af;->j:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method e()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/af;->d:Landroid/support/v7/preference/q;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/preference/af;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/af;->e:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/af;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/af;->e:Landroid/content/SharedPreferences$Editor;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/af;->e:Landroid/content/SharedPreferences$Editor;

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/preference/af;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method f()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/preference/af;->f:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public g()Landroid/support/v7/preference/aj;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/af;->k:Landroid/support/v7/preference/aj;

    return-object v0
.end method

.method public h()Landroid/support/v7/preference/ai;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/af;->l:Landroid/support/v7/preference/ai;

    return-object v0
.end method

.method public i()Landroid/support/v7/preference/ah;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/af;->n:Landroid/support/v7/preference/ah;

    return-object v0
.end method
