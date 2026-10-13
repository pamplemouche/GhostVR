.class final enum Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;
.super Ljava/lang/Enum;
.source "PermissionRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Product"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

.field public static final enum PASSTHROUGH:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

.field public static final enum SCREENSHOT:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

.field public static final enum VOICE:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    const/4 v1, 0x0

    const-string v2, "PASSTHROUGH"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->PASSTHROUGH:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    .line 27
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    const/4 v2, 0x1

    const-string v3, "SCREENSHOT"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->SCREENSHOT:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    .line 30
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    const/4 v3, 0x2

    const-string v4, "VOICE"

    invoke-direct {v0, v4, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->VOICE:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    sget-object v4, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->PASSTHROUGH:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->SCREENSHOT:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->VOICE:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->$VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->fromString(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    move-result-object p0

    return-object p0
.end method

.method private static fromString(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;
    .locals 5

    .line 33
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->values()[Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 34
    invoke-virtual {v3}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregconized value for Product: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;
    .locals 1

    .line 22
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;
    .locals 1

    .line 22
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->$VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    return-object v0
.end method
