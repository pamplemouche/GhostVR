.class public LPv0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(LY81;LP81;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v2, p1, LY81;->d:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, LPv0;->a:Z

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v2, p1, LY81;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, LPv0;->b:Z

    if-eqz p1, :cond_2

    .line 4
    iget-boolean v2, p1, LY81;->c:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, LPv0;->c:Z

    if-eqz p1, :cond_3

    .line 5
    iget-boolean p1, p1, LY81;->e:Z

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, LPv0;->d:Z

    .line 6
    iget-boolean p1, p2, LP81;->c:Z

    iput-boolean p1, p0, LPv0;->e:Z

    .line 7
    iget-boolean p1, p2, LP81;->d:Z

    iput-boolean p1, p0, LPv0;->f:Z

    .line 8
    iget-boolean p1, p2, LP81;->e:Z

    iput-boolean p1, p0, LPv0;->g:Z

    .line 9
    iget-boolean p1, p2, LP81;->f:Z

    iput-boolean p1, p0, LPv0;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;LF91;)V
    .locals 4

    const-string v0, "billingAddress"

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 2
    iget-boolean v2, p0, LPv0;->b:Z

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p2, LF91;->f:LQ81;

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, LQ81;->c:Ljava/lang/String;

    .line 4
    :cond_1
    iget-boolean v2, p0, LPv0;->a:Z

    const-string v3, "phoneNumber"

    if-eqz v2, :cond_2

    .line 5
    iget-object p2, p2, LF91;->f:LQ81;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, LQ81;->d:Ljava/lang/String;

    .line 6
    :cond_2
    iget-boolean p2, p0, LPv0;->f:Z

    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_3
    iget-boolean p1, p0, LPv0;->e:Z

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method
