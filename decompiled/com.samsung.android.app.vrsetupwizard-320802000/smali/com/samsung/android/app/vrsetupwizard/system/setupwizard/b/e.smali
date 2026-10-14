.class public interface abstract Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/e;
.super Ljava/lang/Object;


# virtual methods
.method public abstract a()Ld/g;
    .annotation runtime Ld/b/f;
        a = "/gear-vr/oculus_initial_app.xml"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/g<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/Map;)Ld/g;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/s;
            a = "path"
            b = true
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ld/b/u;
        .end annotation
    .end param
    .annotation runtime Ld/b/f;
        a = "/{path}/stubUpdateCheck.as"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ld/g<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/t;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/util/Map;)Ld/g;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/s;
            a = "path"
            b = true
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ld/b/u;
        .end annotation
    .end param
    .annotation runtime Ld/b/f;
        a = "/{path}/stubDownload.as"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ld/g<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/t;",
            ">;"
        }
    .end annotation
.end method
