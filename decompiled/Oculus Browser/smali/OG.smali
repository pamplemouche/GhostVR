.class public abstract enum LOG;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum w:LOG;

.field public static final enum x:LOG;

.field public static final enum y:LOG;

.field public static final synthetic z:[LOG;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LLG;

    const/4 v1, 0x0

    const-string v2, "LOOSE"

    invoke-direct {v0, v2, v1}, LLG;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOG;->w:LOG;

    .line 2
    new-instance v0, LMG;

    const/4 v2, 0x1

    const-string v3, "STRICT"

    invoke-direct {v0, v3, v2}, LMG;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOG;->x:LOG;

    .line 3
    new-instance v0, LNG;

    const/4 v3, 0x2

    const-string v4, "LAZY"

    invoke-direct {v0, v4, v3}, LNG;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOG;->y:LOG;

    const/4 v4, 0x3

    new-array v4, v4, [LOG;

    .line 4
    sget-object v5, LOG;->w:LOG;

    aput-object v5, v4, v1

    sget-object v1, LOG;->x:LOG;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, LOG;->z:[LOG;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILEG;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[LOG;
    .locals 1

    .line 1
    sget-object v0, LOG;->z:[LOG;

    invoke-virtual {v0}, [LOG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOG;

    return-object v0
.end method


# virtual methods
.method public abstract a(LtF;)Ljava/lang/Object;
.end method
