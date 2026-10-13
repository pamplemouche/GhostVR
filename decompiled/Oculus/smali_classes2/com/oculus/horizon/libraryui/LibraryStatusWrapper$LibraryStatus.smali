.class public final enum Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;
.super Ljava/lang/Enum;
.source "LibraryStatusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LibraryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

.field public static final enum ALL:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

.field public static final enum INSTALLED:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

.field public static final enum NOT_INSTALLED:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

.field public static final enum UPDATES:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->ALL:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    .line 25
    new-instance v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->INSTALLED:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    .line 26
    new-instance v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    const-string v1, "NOT_INSTALLED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->NOT_INSTALLED:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    .line 27
    new-instance v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    const-string v1, "UPDATES"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->UPDATES:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    sget-object v1, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->ALL:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->INSTALLED:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->NOT_INSTALLED:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->UPDATES:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->$VALUES:[Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->$VALUES:[Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    invoke-virtual {v0}, [Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    return-object v0
.end method
