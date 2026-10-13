.class public Lcom/facebook/common/util/ValueCoercer;
.super Ljava/lang/Object;
.source "ValueCoercer.java"


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/facebook/common/util/ValueCoercer;

    sput-object v0, Lcom/facebook/common/util/ValueCoercer;->TAG:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValueAsBoolean(Ljava/lang/Object;Z)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 146
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 147
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 159
    :cond_0
    :goto_0
    return p1

    .line 148
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 150
    :try_start_0
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/facebook/common/util/ValueCoercer;->TAG:Ljava/lang/Class;

    const-string v2, "Failed to parse value"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    if-eqz p0, :cond_0

    .line 158
    sget-object v1, Lcom/facebook/common/util/ValueCoercer;->TAG:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getValueAsDouble(Ljava/lang/Object;D)D
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # D

    .prologue
    .line 114
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 115
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 133
    :cond_0
    :goto_0
    return-wide p1

    .line 116
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 117
    check-cast p0, Ljava/lang/Float;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double p1, v1

    goto :goto_0

    .line 118
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 119
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double p1, v1

    goto :goto_0

    .line 120
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 121
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double p1, v2

    goto :goto_0

    .line 122
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 124
    :try_start_0
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/facebook/common/util/ValueCoercer;->TAG:Ljava/lang/Class;

    const-string v2, "Failed to parse value"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_5
    if-eqz p0, :cond_0

    .line 132
    sget-object v1, Lcom/facebook/common/util/ValueCoercer;->TAG:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getValueAsFloat(Ljava/lang/Object;F)F
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # F

    .prologue
    .line 82
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 83
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p1

    .line 101
    :cond_0
    :goto_0
    return p1

    .line 84
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 85
    check-cast p0, Ljava/lang/Float;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    .line 86
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 87
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float p1, v1

    goto :goto_0

    .line 88
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 89
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float p1, v2

    goto :goto_0

    .line 90
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 92
    :try_start_0
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/facebook/common/util/ValueCoercer;->TAG:Ljava/lang/Class;

    const-string v2, "Failed to parse value"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_5
    if-eqz p0, :cond_0

    .line 100
    sget-object v1, Lcom/facebook/common/util/ValueCoercer;->TAG:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getValueAsInteger(Ljava/lang/Object;I)I
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # I

    .prologue
    .line 28
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 29
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 41
    :cond_0
    :goto_0
    return p1

    .line 30
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 32
    :try_start_0
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/facebook/common/util/ValueCoercer;->TAG:Ljava/lang/Class;

    const-string v2, "Failed to parse value"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    if-eqz p0, :cond_0

    .line 40
    sget-object v1, Lcom/facebook/common/util/ValueCoercer;->TAG:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getValueAsLong(Ljava/lang/Object;J)J
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # J

    .prologue
    .line 54
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 55
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide p1

    .line 69
    :cond_0
    :goto_0
    return-wide p1

    .line 56
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 57
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    .line 58
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 60
    :try_start_0
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/facebook/common/util/ValueCoercer;->TAG:Ljava/lang/Class;

    const-string v2, "Failed to parse value"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    if-eqz p0, :cond_0

    .line 68
    sget-object v1, Lcom/facebook/common/util/ValueCoercer;->TAG:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getValueAsTriState(Ljava/lang/Object;)Lcom/facebook/common/util/TriState;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 171
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 172
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/facebook/common/util/TriState;->valueOf(Ljava/lang/Boolean;)Lcom/facebook/common/util/TriState;

    move-result-object v1

    .line 184
    :goto_0
    return-object v1

    .line 173
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 175
    :try_start_0
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/facebook/common/util/ValueCoercer;->TAG:Ljava/lang/Class;

    const-string v2, "Failed to parse value"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    if-nez p0, :cond_2

    .line 181
    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    goto :goto_0

    .line 183
    :cond_2
    sget-object v1, Lcom/facebook/common/util/ValueCoercer;->TAG:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/Class;Ljava/lang/String;)V

    .line 184
    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    goto :goto_0
.end method
