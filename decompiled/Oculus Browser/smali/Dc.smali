.class public LDc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/content/Context;

.field public b:J

.field public c:Landroid/content/SharedPreferences;

.field public d:Landroid/content/SharedPreferences$Editor;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Landroid/support/v7/preference/PreferenceScreen;

.field public i:LCc;

.field public j:LAc;

.field public k:LBc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, LDc;->b:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, LDc;->g:I

    .line 4
    iput-object p1, p0, LDc;->a:Landroid/content/Context;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_preferences"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iput-object p1, p0, LDc;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, LDc;->c:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 3
    iget-boolean v0, p0, LDc;->e:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, LDc;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, LDc;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, LDc;->d:Landroid/content/SharedPreferences$Editor;

    .line 6
    :cond_0
    iget-object v0, p0, LDc;->d:Landroid/content/SharedPreferences$Editor;

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p0}, LDc;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->a(LDc;)V

    return-object v0
.end method

.method public b()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, LDc;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, LDc;->b:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    iget-object v0, p0, LDc;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, LDc;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, LDc;->a:Landroid/content/Context;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, LDc;->a:Landroid/content/Context;

    invoke-static {v0}, LR3;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, LDc;->f:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, LDc;->c:Landroid/content/SharedPreferences;

    .line 6
    :cond_1
    iget-object v0, p0, LDc;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method
