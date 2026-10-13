.class public final enum Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;
.super Ljava/lang/Enum;
.source "SettingsIPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/SettingsIPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

.field public static final enum ACTION:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

.field public static final enum BOOLEAN:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

.field public static final enum CATEGORY_HEADER:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

.field public static final enum FLOAT:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

.field public static final enum INTEGER:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

.field public static final enum INVALID:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

.field public static final enum STRING:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

.field private static values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 34
    new-instance v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    const-string v3, "Invalid"

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->INVALID:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    .line 35
    new-instance v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    const/4 v2, 0x1

    const-string v3, "CATEGORY_HEADER"

    const-string v4, "CategoryHeader"

    invoke-direct {v0, v3, v2, v4}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->CATEGORY_HEADER:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    .line 36
    new-instance v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    const/4 v3, 0x2

    const-string v4, "ACTION"

    const-string v5, "Action"

    invoke-direct {v0, v4, v3, v5}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->ACTION:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    .line 37
    new-instance v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    const/4 v4, 0x3

    const-string v5, "STRING"

    const-string v6, "String"

    invoke-direct {v0, v5, v4, v6}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->STRING:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    .line 38
    new-instance v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    const/4 v5, 0x4

    const-string v6, "INTEGER"

    const-string v7, "Integer"

    invoke-direct {v0, v6, v5, v7}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->INTEGER:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    .line 39
    new-instance v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    const/4 v6, 0x5

    const-string v7, "FLOAT"

    const-string v8, "Float"

    invoke-direct {v0, v7, v6, v8}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->FLOAT:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    .line 40
    new-instance v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    const/4 v7, 0x6

    const-string v8, "BOOLEAN"

    const-string v9, "Boolean"

    invoke-direct {v0, v8, v7, v9}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->BOOLEAN:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    const/4 v0, 0x7

    .line 33
    new-array v0, v0, [Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    sget-object v8, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->INVALID:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->CATEGORY_HEADER:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->ACTION:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->STRING:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->INTEGER:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->FLOAT:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->BOOLEAN:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->$VALUES:[Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->values:Ljava/util/HashMap;

    .line 46
    const-class v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    .line 47
    sget-object v2, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->values:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->text:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;
    .locals 3

    .line 61
    sget-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    return-object p0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "No enum constant com.oculus.panelapp.debug.SettingsIPC.SettingType.%s"

    .line 63
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;
    .locals 1

    .line 33
    const-class v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;
    .locals 1

    .line 33
    sget-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->$VALUES:[Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->text:Ljava/lang/String;

    return-object v0
.end method
