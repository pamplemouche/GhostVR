.class public final enum LdK;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LdK;

.field public static final enum x:LdK;

.field public static final enum y:LdK;

.field public static final enum z:LdK;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LdK;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "ACCESSIBILITY_ID"

    invoke-direct {v0, v3, v2, v1}, LdK;-><init>(Ljava/lang/String;II)V

    sput-object v0, LdK;->x:LdK;

    .line 2
    new-instance v0, LdK;

    const/4 v1, 0x5

    const/4 v3, 0x1

    const-string v4, "ACCESSIBILITY_ID_BINDING"

    invoke-direct {v0, v4, v3, v1}, LdK;-><init>(Ljava/lang/String;II)V

    sput-object v0, LdK;->y:LdK;

    .line 3
    new-instance v0, LdK;

    const/4 v1, 0x2

    const-string v4, "ACCESSIBILITYIDDATA_NOT_SET"

    invoke-direct {v0, v4, v1, v2}, LdK;-><init>(Ljava/lang/String;II)V

    sput-object v0, LdK;->z:LdK;

    const/4 v4, 0x3

    new-array v4, v4, [LdK;

    .line 4
    sget-object v5, LdK;->x:LdK;

    aput-object v5, v4, v2

    sget-object v2, LdK;->y:LdK;

    aput-object v2, v4, v3

    aput-object v0, v4, v1

    sput-object v4, LdK;->A:[LdK;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LdK;->w:I

    return-void
.end method

.method public static a(I)LdK;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LdK;->y:LdK;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LdK;->x:LdK;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LdK;->z:LdK;

    return-object p0
.end method

.method public static values()[LdK;
    .locals 1

    .line 1
    sget-object v0, LdK;->A:[LdK;

    invoke-virtual {v0}, [LdK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LdK;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LdK;->w:I

    return v0
.end method
