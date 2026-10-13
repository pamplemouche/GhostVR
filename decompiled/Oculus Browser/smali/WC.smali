.class public LWC;
.super LSE;
.source "PG"


# static fields
.field public static final f:Ljava/util/Map;

.field public static final g:Ljava/util/Map;

.field public static final h:Ljava/util/Map;

.field public static final i:Ljava/util/Map;

.field public static final j:Ljava/util/Map;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, LVC;->values()[LVC;

    move-result-object v0

    invoke-static {v0}, LWC;->a([Ljava/lang/Enum;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LWC;->f:Ljava/util/Map;

    .line 2
    invoke-static {}, LSC;->values()[LSC;

    move-result-object v0

    invoke-static {v0}, LWC;->a([Ljava/lang/Enum;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LWC;->g:Ljava/util/Map;

    .line 3
    invoke-static {}, LUC;->values()[LUC;

    move-result-object v0

    invoke-static {v0}, LWC;->a([Ljava/lang/Enum;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LWC;->h:Ljava/util/Map;

    .line 4
    invoke-static {}, LTC;->values()[LTC;

    move-result-object v0

    invoke-static {v0}, LWC;->a([Ljava/lang/Enum;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LWC;->i:Ljava/util/Map;

    .line 5
    invoke-static {}, LRC;->values()[LRC;

    move-result-object v0

    invoke-static {v0}, LWC;->a([Ljava/lang/Enum;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LWC;->j:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LSE;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LWC;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LWC;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LWC;->c:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LWC;->d:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LWC;->e:Ljava/util/Map;

    .line 7
    iget-object v0, p0, LWC;->a:Ljava/util/Map;

    invoke-static {}, LVC;->values()[LVC;

    move-result-object v1

    invoke-static {v0, v1}, LWC;->a(Ljava/util/Map;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, LWC;->b:Ljava/util/Map;

    invoke-static {}, LUC;->values()[LUC;

    move-result-object v1

    invoke-static {v0, v1}, LWC;->a(Ljava/util/Map;[Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, LWC;->c:Ljava/util/Map;

    invoke-static {}, LSC;->values()[LSC;

    move-result-object v1

    invoke-static {v0, v1}, LWC;->a(Ljava/util/Map;[Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, LWC;->d:Ljava/util/Map;

    invoke-static {}, LTC;->values()[LTC;

    move-result-object v1

    invoke-static {v0, v1}, LWC;->a(Ljava/util/Map;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, LWC;->e:Ljava/util/Map;

    invoke-static {}, LRC;->values()[LRC;

    move-result-object v1

    invoke-static {v0, v1}, LWC;->a(Ljava/util/Map;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a([Ljava/lang/Enum;)Ljava/util/Map;
    .locals 5

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 22
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(LZB;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Enum;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, p4

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    .line 6
    check-cast p0, LgC;

    const-string p2, "Skipping unknown enum value name %s"

    invoke-virtual {p0, p2, p1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    const-string v0, "."

    .line 14
    invoke-static {p2, v0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 17
    invoke-static {p2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 18
    new-instance v2, LoC;

    invoke-direct {v2, v1, v0}, LoC;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/util/Map;[Ljava/lang/Object;)V
    .locals 5

    .line 23
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(LbF;)V
    .locals 3

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {p0, v0}, LWC;->a(Ljava/util/List;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 27
    iget-object p1, p1, LbF;->b:LdF;

    .line 28
    iget-object p1, p1, LdF;->a:Ljava/util/Formatter;

    const-string v0, "Client Statistics: %s\n"

    invoke-virtual {p1, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2

    .line 9
    iget-object v0, p0, LWC;->a:Ljava/util/Map;

    const-string v1, "SentMessageType"

    invoke-static {v0, p1, v1}, LWC;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, LWC;->b:Ljava/util/Map;

    const-string v1, "ReceivedMessageType"

    invoke-static {v0, p1, v1}, LWC;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, LWC;->c:Ljava/util/Map;

    const-string v1, "IncomingOperationType"

    invoke-static {v0, p1, v1}, LWC;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, LWC;->d:Ljava/util/Map;

    const-string v1, "ListenerEventType"

    invoke-static {v0, p1, v1}, LWC;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, LWC;->e:Ljava/util/Map;

    const-string v1, "ClientErrorType"

    invoke-static {v0, p1, v1}, LWC;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
