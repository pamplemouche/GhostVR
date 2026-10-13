.class public LxS;
.super LiS;
.source "PG"


# static fields
.field public static d:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, LxS;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, LiS;-><init>()V

    .line 2
    :try_start_0
    sget-object v0, LxS;->d:Lorg/json/JSONObject;

    const-string v1, "event"

    const-string v2, "exposure"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    sput-object v0, LxS;->d:Lorg/json/JSONObject;

    .line 4
    :goto_0
    :try_start_1
    iget-object v0, p0, LiS;->a:Lorg/json/JSONObject;

    const-string v1, "name"

    const-string v2, "quick_experiment_event"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v0, p0, LiS;->a:Lorg/json/JSONObject;

    const-string v1, "exprID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__qe__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object p1, p0, LiS;->a:Lorg/json/JSONObject;

    const-string v0, "unit_id"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object p1, p0, LiS;->a:Lorg/json/JSONObject;

    const-string p3, "log_type"

    const-string v0, "experiment"

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object p1, p0, LiS;->a:Lorg/json/JSONObject;

    const-string p3, "oculus_sessionless"

    const-string v0, "1"

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object p1, p0, LiS;->a:Lorg/json/JSONObject;

    const-string p3, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, LoS;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object p1, p0, LiS;->a:Lorg/json/JSONObject;

    const-string p3, "result"

    sget-object v0, LxS;->d:Lorg/json/JSONObject;

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "os_type"

    const-string p3, "Oculus"

    .line 11
    invoke-virtual {p0, p1, p3}, LiS;->a(Ljava/lang/String;Ljava/lang/String;)LiS;

    const-string p1, "group"

    if-nez p2, :cond_0

    const-string p2, "null"

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, LiS;->a(Ljava/lang/String;Ljava/lang/String;)LiS;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 13
    sget-object p2, LiS;->c:Ljava/lang/String;

    const-string p3, ""

    invoke-static {p2, p3, p1}, LgS;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, LiS;->a:Lorg/json/JSONObject;

    const-string v1, "extra"

    iget-object v2, p0, LiS;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, LiS;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, LiS;->c:Ljava/lang/String;

    const-string v2, "FATAL"

    invoke-static {v1, v2, v0}, LgS;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "{}"

    return-object v0
.end method
