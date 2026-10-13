.class public final enum LOi0;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum w:LOi0;

.field public static final enum x:LOi0;

.field public static final synthetic y:[LOi0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, LOi0;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LOi0;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOi0;->w:LOi0;

    new-instance v0, LOi0;

    const-string v1, "DESTROYED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, LOi0;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOi0;->x:LOi0;

    const/4 v1, 0x2

    new-array v1, v1, [LOi0;

    sget-object v4, LOi0;->w:LOi0;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, LOi0;->y:[LOi0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[LOi0;
    .locals 1

    .line 1
    sget-object v0, LOi0;->y:[LOi0;

    invoke-virtual {v0}, [LOi0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOi0;

    return-object v0
.end method
