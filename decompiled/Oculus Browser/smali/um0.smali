.class public abstract Lum0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Map;

.field public static final b:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v2, Lrm0;

    const v3, 0x7f13041a

    const-string v4, "browser"

    const/4 v5, 0x2

    const-string v6, "general"

    invoke-direct {v2, v4, v3, v5, v6}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, Lrm0;

    const v3, 0x7f13041d

    const-string v4, "downloads"

    invoke-direct {v2, v4, v3, v5, v6}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Lrm0;

    const v3, 0x7f130420

    const-string v4, "incognito"

    invoke-direct {v2, v4, v3, v5, v6}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Lrm0;

    const v3, 0x7f130421

    const-string v4, "media"

    invoke-direct {v2, v4, v3, v5, v6}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Lrm0;

    const v3, 0x7f130423

    const-string v4, "screen_capture"

    const/4 v7, 0x4

    invoke-direct {v2, v4, v3, v7, v6}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Lrm0;

    const v3, 0x7f130424

    const-string v4, "sharing"

    invoke-direct {v2, v4, v3, v7, v6}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v2, Lrm0;

    const v3, 0x7f130425

    const/4 v4, 0x3

    const-string v8, "sites"

    invoke-direct {v2, v8, v3, v4, v6}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v2, Lrm0;

    const v3, 0x7f13041c

    const-string v4, "content_suggestions"

    invoke-direct {v2, v4, v3, v5, v6}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v2, Lrm0;

    const v3, 0x7f13041e

    const/4 v4, 0x1

    const-string v8, "webapp_actions"

    invoke-direct {v2, v8, v3, v4, v6}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v2, Lrm0;

    const v3, 0x7f130427

    const-string v4, "vr"

    invoke-direct {v2, v4, v3, v7, v6}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v2, Lrm0;

    const v3, 0x7f130426

    const-string v4, "updates"

    invoke-direct {v2, v4, v3, v7, v6}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v2, Lrm0;

    const v10, 0x7f13041b

    const/4 v11, 0x2

    const-string v12, "general"

    const/4 v13, 0x1

    const-string v9, "completed_downloads"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    const-string v3, "completed_downloads"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v2, Lrm0;

    const v3, 0x7f130422

    const-string v4, "permission_requests"

    invoke-direct {v2, v4, v3, v5, v6}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v2, Lrm0;

    const-string v4, "permission_requests_high"

    invoke-direct {v2, v4, v3, v7, v6}, Lrm0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lum0;->a:Ljava/util/Map;

    .line 22
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lum0;->b:Ljava/util/Set;

    return-void
.end method
